//
//  CardView.swift
//  AroundEgypt
//
//  Created by Alaa Gaber on 16/01/2025.
//

import SwiftUI

struct CardView: View {
    
    var data: PlaceModel
    
    @Binding var likes: Int

    var likeImage = Image(systemName: "heart.fill")
    var unlikeImage = Image(systemName: "heart")
    
    var body: some View {
        VStack{
            ZStack{
                AsyncCachedImage(url: URL(string: data.cover_photo ?? "")) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        } placeholder: {
                            ProgressView()
                        }
                        .clipShape(.rect(cornerRadius: 7))
                
                HStack{
                    VStack(){
                        Image(systemName: "info.circle")
                            .resizable()
                            .scaledToFit()
                            .background(Color.clear)
                            .foregroundStyle(Color.white)
                            .clipShape(.rect(cornerRadius: 10))
                            .frame(width: 20, height: 20)
                        Spacer()
                        Image(systemName: "eye.fill")
                            .resizable()
                            .scaledToFit()
                            .background(Color.clear)
                            .foregroundStyle(Color.white)
                            .frame(width: 20, height: 20)
                        
                    }
                    Spacer()
                    VStack(){
                        Image(systemName: "info.circle")
                            .resizable()
                            .scaledToFit()
                            .background(Color.clear)
                            .foregroundStyle(Color.white)
                            .clipShape(.rect(cornerRadius: 10))
                            .frame(width: 20, height: 20)
                        Spacer()
                        Image(systemName: "photo.on.rectangle")
                            .resizable()
                            .scaledToFit()
                            .background(Color.clear)
                            .foregroundStyle(Color.white)
                            .frame(width: 20, height: 20)
                        
                    }
                }
                .padding()
            }
            .padding(.horizontal)

            HStack{
                Text(data.title ?? "Unknown")
                Spacer()
                
                Button{
                    likes = 3
                }label: {
                    HStack{
                        Text("\( data.likes_no ?? 0)")
                        image(for: data.likes_no ?? 0)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20,height: 20)
                    }
                }
            }
            .padding(.horizontal)
            Spacer()
        }

    }
    
    func image(for number: Int) -> Image {
        if number > 0 {
            likeImage
        } else {
            unlikeImage
        }
    }
}

#Preview {
    let testData = PlaceModel.init(id: "1", title: "Test", cover_photo: "https://aroundegypt-production.s3.eu-central-1.amazonaws.com/21/DBiLufkgRD42qnvG83yuJzXiaV2NVp-metad214aWhEdnY2T2dvTzRobXRNcThkRXZOTk5sMjh5SVZCMW5BV2ZsMi5qcGVn-.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASZMRQEMKBKVP4NHO%2F20250116%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20250116T105919Z&X-Amz-SignedHeaders=host&X-Amz-Expires=172800&X-Amz-Signature=546216a2381bba1c3f23933ac2f23d381555d9ea93ae1ea1102eade844374263"
                                  , descriptionText: "write description here", views_no: 2, likes_no: 5)
    
    CardView(data: testData, likes: .constant(4))
        .modelContainer(for: [PlaceModel.self],inMemory: true)
}
