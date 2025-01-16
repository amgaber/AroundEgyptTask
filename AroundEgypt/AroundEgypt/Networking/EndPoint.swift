//
//  EndPoint.swift
//  AroundEgypt
//
//  Created by Alaa Gaber on 16/01/2025.
//

import Foundation

let baseURLString = "https://aroundegypt.34ml.com"

 enum Endpoint {
    
    case baseURL
    case recommendedExperiences
    case recentExperiences
     case searchExperiences(String)
     case singleExperience(String)

  
//    case seasons(_ page: Int)
    
    var path: String {
        switch self {
        case .baseURL: return baseURLString
        case .recommendedExperiences: return baseURLString + "/api/v2/experiences?filter[recommended]=true"
        case .recentExperiences: return baseURLString + "/api/v2/experiences"
        case .searchExperiences: return baseURLString + "/api/v2/experiences"
        case .singleExperience: return baseURLString + "/api/v2/experiences"
          
//        case .seasons: return baseURLString + "season"
        }
    }
    
    var url: URL? {
        switch self {
        case .baseURL: return URL(string: path)
        case .recommendedExperiences: return URL(string: path)
        case .recentExperiences: return URL(string: path)
        case .searchExperiences(let searchText): return URL(string: path + "?filter[search]=\(searchText)")
        case .singleExperience(let expID): return URL(string: path + "/\(expID)")
            
            
        
//        case .seasons(let page): return URL(string: path + (page > 0 ? "/?page=\(page)" : ""))
        }
    }
     
     
     //TODO: need fixes
//     func  query( page: Int, status: String) -> String {
//         var query = ""
//         
//         if page > 0 {
//             if status.isEmpty {
//                 query = "/?page=\(page)"
//             }else {
//                 query =  "/?page=\(page)&status=\(String(describing: status))"
//             }
//             
//         } else {
//           
//             if status.isEmpty {
//                 query = ""
//             }else {
//                 query =  "/?status=\(String(describing: status))"
//             }
//             
//         }
//         return query
//     }
}


