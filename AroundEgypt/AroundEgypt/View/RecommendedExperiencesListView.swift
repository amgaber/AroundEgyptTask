//
//  RecommendedExperiencesListView.swift
//  AroundEgypt
//
//  Created by Alaa Gaber on 17/01/2025.
//

import SwiftUI

struct RecommendedExperiencesListView: View {
    @StateObject var listViewModel = ListViewModel(dataService: .shared)

    @State private var selectedCard: PlaceModel?

    @State private var likes = 0
    
    var body: some View {
        VStack(alignment: .leading){
            Text("RecommendedExperiences")
                .font(.title2)
                .bold()
                .padding()
            
            ScrollView (.horizontal){
                LazyHStack(alignment: .top) {
                    ForEach(listViewModel.data) { data in
                        
                        Button {
                            selectedCard = data
                        } label: {
                            CardView(data: data, recommended: true, likes: $likes)
                        }
                        
                    }
                }
                .padding(.horizontal)
                
            }
            .task {
                await listViewModel.fetchData(.recommendedExperiences)
            }
            .sheet(item: $selectedCard) { data in
                ExperiencDetailsView(data: data)
            }
        }
    }
}

#Preview {
    RecommendedExperiencesListView()
}
