//
//  NetworkService.swift
//  AroundEgypt
//
//  Created by Alaa Gaber on 16/01/2025.
//

import Foundation
import SwiftUI

struct NetworkService {

    func fetchUpdates(_ endpoint: Endpoint) async throws -> Data {
        let basicTask = Task {
            guard let url = endpoint.url else {
                throw URLError(.badURL)
            }
            let (data,response) = try await URLSession.shared.data(from: url)
            guard (response as? HTTPURLResponse)?.statusCode == 200 else {
                throw URLError(.badServerResponse)
            }
            return data
        }
        
        return try await basicTask.value
    }
}

