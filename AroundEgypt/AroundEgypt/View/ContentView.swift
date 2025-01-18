//
//  ContentView.swift
//  AroundEgypt
//
//  Created by Alaa Gaber on 16/01/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var listViewModel = ListViewModel(dataService: .shared)
    
    @State private var searchText = ""

    var body: some View {
        NavigationStack{
                List{
                        WelcomeCardView()
                        RecommendedExperiencesListView()
                        RecentListView()
                }
                .listStyle(.plain)
                .searchable(
                    text: $listViewModel.searchText,
                    prompt: "Try LUXOR")
        }
        .navigationTitle("Welcome!")
    }
}

#Preview {
    ContentView()
}
