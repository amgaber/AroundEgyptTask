//
//  ListViewModel.swift
//  AroundEgypt
//
//  Created by Alaa Gaber on 16/01/2025.
//

import SwiftUI
import SwiftData

class ListViewModel: ObservableObject {
    @Published var data = [PlaceModel]()
        
    @Published var searchText: String = ""
    
    private var dataService : SwiftDataService
    
    private let getService = NetworkService()

    init(dataService: SwiftDataService) {
        self.dataService = dataService
        
        self.data = dataService.fetchPlaces()
        
//        self.data = self.data.filter({ $0.city?.name?.lowercased().contains(searchText.lowercased()) ?? false })
        
    }
    
    func fetchData(_ endpoint: Endpoint) async {
            do {
                let resData = try await getService.fetchUpdates(endpoint)
                let json = try  JSONDecoder().decode(Json4Swift_Base.self, from: resData)
                

                DispatchQueue.main.async {
                    
                    guard let res = json.data else { return }
                        //mapping data to PlaceModel to save in swiftData
                        for place in res {
                            let model = PlaceModel(
                                id: place.id ?? "",
                                title: place.title ?? "unknown",
                                cover_photo: place.cover_photo ?? "",
                                descriptionText: place.descriptionText ?? "",
                                views_no: place.views_no ?? 0,
                                likes_no: place.likes_no ?? 0,
                                recommended: place.recommended ?? 0,
                                has_video: place.has_video ?? 0,
                                tags: place.tags ?? [] ,
                                city: place.city,
                                tour_html: place.tour_html ?? "",
                                famous_figure: place.famous_figure ?? "",
                                period: place.period ,
                                era: place.era ,
                                founded: place.founded ?? "",
                                detailed_description: place.detailed_description ?? "",
                                address: place.address ?? "",
                                gmap_location: place.gmap_location,
                                opening_hours: place.opening_hours,
                                translated_opening_hours: place.translated_opening_hours,
                                starting_price: place.starting_price ?? 0,
                                ticket_prices: place.ticket_prices ?? [],
                                //                            experience_tips: place.experience_tips ?? [],
                                is_liked: place.is_liked ?? false,
                                reviews: place.reviews ?? [],
                                rating: place.rating ?? 0,
                                reviews_no: place.reviews_no ?? 0,
                                audio_url: place.audio_url ?? "",
                                has_audio: place.has_audio ?? false)
                            
                            self.data.append(model)
                            
                            self.dataService.addPlace(model)
                        }
                    }
                
            } catch {
                print("Error fetching data: \(error)")
            }
        }
}
