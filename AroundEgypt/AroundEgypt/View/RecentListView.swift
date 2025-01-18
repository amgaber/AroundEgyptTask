//
//  RecentListView.swift
//  AroundEgypt
//
//  Created by Alaa Gaber on 17/01/2025.
//

import SwiftUI

struct RecentListView: View {
    @StateObject var listViewModel = ListViewModel(dataService: .shared)

    @State private var selectedCard: PlaceModel?

    @State private var likes = 0

    var body: some View {
       
            List {
                Text("Most Recent")
                    .font(.title2)
                    .bold()
                ForEach(listViewModel.filteredPlaces) { data in
                
                    Button {
                        selectedCard = data
                    } label: {
                        CardView(data: data, recommended: false,
                                 likes: $likes)
                    }
                    
                }
            }
            .listRowSeparator(.hidden)
            .frame(minHeight: 500)
            .searchable(
                text: $listViewModel.searchText,
                prompt: "Try LUXOR")
            .task {
                if let str = listViewModel.searchText as? String, !str.isEmpty {
                    await listViewModel.fetchData(.searchExperiences(listViewModel.searchText))
                }else {
                    await listViewModel.fetchData(.recentExperiences)
                }
            }
            .sheet(item: $selectedCard) { data in
                ExperiencDetailsView(data: data)
            }
            
    }
}

#Preview {
    RecentListView()
}
