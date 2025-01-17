//
//  WelcomeCardView.swift
//  AroundEgypt
//
//  Created by Alaa Gaber on 17/01/2025.
//

import SwiftUI

struct WelcomeCardView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Welcome!")
                .font(.largeTitle)
                .bold()
            Text("Now you can explore any experience in 360 degrees and get all the details about it all in one place.")
                .font(.headline)
                .fontWeight(.medium)
        }
        .padding()
    }
}

#Preview {
    WelcomeCardView()
}
