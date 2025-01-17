//
//  SwiftDataService.swift
//  AroundEgypt
//
//  Created by Alaa Gaber on 17/01/2025.
//

import Foundation
import SwiftData

class SwiftDataService {
    
    private let modelContainer: ModelContainer
    private let modelContext: ModelContext
    
    @MainActor
    static let shared = SwiftDataService()
    
    @MainActor
    private init() {
        // Change isStoredInMemoryOnly to false if you would like to see the data persistance after kill/exit the app

        self.modelContainer = try! ModelContainer(for: PlaceModel.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        self.modelContext = modelContainer.mainContext
    }
    
    
    //To get data from swiftData
    func fetchPlaces() -> [PlaceModel] {
        
        do{
            return try modelContext.fetch(FetchDescriptor< PlaceModel>())
        } catch {
            fatalError(error.localizedDescription)
        }
    }
    
    //for Adding data to swiftData
    func addPlace(_ place: PlaceModel) {
        
        modelContext.insert(place)
        
        do{
            try modelContext.save()
        } catch{
            fatalError(error.localizedDescription)
        }
    }
}
