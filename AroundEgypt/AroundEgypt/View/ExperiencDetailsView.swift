//
//  ExperiencDetailsView.swift
//  AroundEgypt
//
//  Created by Alaa Gaber on 16/01/2025.
//

import SwiftUI

struct ExperiencDetailsView: View {
    let data: PlaceModel
    @State private var likes = 0

    var body: some View {
        ScrollView{
            LazyVStack{
                ExperienceCardView(data: data, likes: $likes)
                VStack(alignment: .leading) {
                    Text("Description")
                        .bold()
                    Text(data.descriptionText ?? "")
                        .font(.custom("Gotham", size: 14))
                }
                .padding()                
            }
            
        }
        
    }
}

#Preview {
    let testData = PlaceModel.init(id: "1", title: "Test", cover_photo: "https://aroundegypt-production.s3.eu-central-1.amazonaws.com/21/DBiLufkgRD42qnvG83yuJzXiaV2NVp-metad214aWhEdnY2T2dvTzRobXRNcThkRXZOTk5sMjh5SVZCMW5BV2ZsMi5qcGVn-.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASZMRQEMKBKVP4NHO%2F20250116%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20250116T105919Z&X-Amz-SignedHeaders=host&X-Amz-Expires=172800&X-Amz-Signature=546216a2381bba1c3f23933ac2f23d381555d9ea93ae1ea1102eade844374263"
                                  , descriptionText: "write description here", views_no: 2, likes_no: 5)
    
    ExperienceCardView(data: testData, likes: .constant(4))
        .modelContainer(for: [PlaceModel.self],inMemory: true)
}
