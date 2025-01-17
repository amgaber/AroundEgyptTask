//
//  AroundEgyptApp.swift
//  AroundEgypt
//
//  Created by Alaa Gaber on 16/01/2025.
//

import SwiftUI
import SwiftData

@main
struct AroundEgyptApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: PlaceModel.self)
    }
}
