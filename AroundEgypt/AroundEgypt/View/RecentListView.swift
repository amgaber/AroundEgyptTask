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
        NavigationStack{
            List{
                ForEach(listViewModel.data) { data in
                
                    Button {
                        selectedCard = data
                    } label: {
                        CardView(data: data, likes: $likes)
                    }
                    
                }
            }
        }
        .listStyle(.plain)
        .navigationTitle("Welcome!")
        .searchable(text: $listViewModel.searchText)
        .task {
            await listViewModel.fetchData(.recentExperiences)
        }
        .sheet(item: $selectedCard) { data in
            ExperiencDetailsView(data: data)
        }
    }
}

#Preview {
    RecentListView()
}
