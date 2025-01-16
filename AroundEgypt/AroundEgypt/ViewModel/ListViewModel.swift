//
//  ListViewModel.swift
//  AroundEgypt
//
//  Created by Alaa Gaber on 16/01/2025.
//

import SwiftUI

class ListViewModel: ObservableObject {
    @Published var data = [PlaceData]()
    @Published var searchText: String = ""
    
    private let getService = NetworkService()

    func fetchData(_ endpoint: Endpoint) async {
            do {
                let data = try await getService.fetchUpdates(endpoint)
                let json = try  JSONDecoder().decode(Json4Swift_Base.self, from: data)

                DispatchQueue.main.async {
                    self.data = json.data ?? []
                }
            } catch {
                print("Error fetching data: \(error)")
            }
        }
}
