//
//  ContentView.swift
//  AroundEgypt
//
//  Created by Alaa Gaber on 16/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var listViewModel = ListViewModel()
    @State private var likes = 0

    @State private var selectedCard: PlaceData?
    
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
    ContentView()
}
