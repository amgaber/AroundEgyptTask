//
//  ExperienceCardView.swift
//  AroundEgypt
//
//  Created by Alaa Gaber on 17/01/2025.
//

import SwiftUI

struct ExperienceCardView: View {
    var data: PlaceData
    @Binding var likes: Int

    var likeImage = Image(systemName: "heart.fill")
    var unlikeImage = Image(systemName: "heart")
    
    var body: some View {
        VStack{
            ZStack{
                AsyncImage(url: URL(string: data.cover_photo ?? ""),scale: 3) { phase in
                           switch phase {
                               case .empty:
                                   ZStack {
                                       Color.gray
                                       ProgressView()
                                   }
                               case .success(let image):
                                   image
                                   .resizable()
                                   .scaledToFit()
                               case .failure(let error):
                               
                                   ZStack {
                                       Color.gray
                                       Text(error.localizedDescription)
                                   }
                               @unknown default:
                                   EmptyView()
                           }
                       }
                Button(action: {
                                // Handle your custom action
                                print("Custom action tapped")
                            }) {
                                Text("Explore Now")
                                    .padding()
                                    .foregroundColor(.orange)
                                    .font(.headline)
                                    .background(Color.white)
                                    .cornerRadius(10)
                            }
                VStack{
                   
                    Spacer()
                    HStack(alignment: .bottom){
                        
                        Image(systemName: "eye.fill")
                            .resizable()
                            .scaledToFit()
                            .background(Color.clear)
                            .foregroundStyle(Color.white)
                            .frame(width: 20, height: 20)
                        
                        Spacer()
                        Image(systemName: "photo.on.rectangle")
                            .resizable()
                            .scaledToFit()
                            .background(Color.clear)
                            .foregroundStyle(Color.white)
                            .frame(width: 20, height: 20)
                        
                    }
                    .padding()
                }
            }

            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Text(data.title ?? "Unknown")
                        .bold()
                    Text(data.city?.name ?? "Unknown")
                        .font(.custom("Gotham", size: 14))
                }
                Spacer()
                
                ShareLink(item: ""){
                    Label("", systemImage: "square.and.arrow.up")
                }.foregroundStyle(Color.orange)
                Button{
                    likes = 3
                }label: {
                    HStack{
                        image(for: data.likes_no ?? 0)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20,height: 20)
                            .foregroundStyle(Color.orange)
                        Text("\( data.likes_no ?? 0)")
                            .foregroundStyle(Color.orange)

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
    let testData = PlaceData.init(id: "1", title: "Test", cover_photo: "https://aroundegypt-production.s3.eu-central-1.amazonaws.com/21/DBiLufkgRD42qnvG83yuJzXiaV2NVp-metad214aWhEdnY2T2dvTzRobXRNcThkRXZOTk5sMjh5SVZCMW5BV2ZsMi5qcGVn-.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASZMRQEMKBKVP4NHO%2F20250116%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20250116T105919Z&X-Amz-SignedHeaders=host&X-Amz-Expires=172800&X-Amz-Signature=546216a2381bba1c3f23933ac2f23d381555d9ea93ae1ea1102eade844374263"
                             , description: "write description here", views_no: 2, likes_no: 5)
    
    ExperienceCardView(data: testData, likes: .constant(4))
}
