//
//  PlaceModel.swift
//  AroundEgypt
//
//  Created by Alaa Gaber on 17/01/2025.
//

import Foundation
import SwiftData

@Model
class PlaceModel {
    
    var id : String?
    var title : String?
    var cover_photo : String?
    var descriptionText : String?
    var views_no : Int?
    var likes_no : Int?
    var recommended : Int?
    var has_video : Int?
    var tags : [Tags]?
    var city : City?
    var tour_html : String?
    var famous_figure : String?
    var period : Period?
    var era : Era?
    var founded : String?
    var detailed_description : String?
    var address : String?
    var gmap_location : Gmap_location?
    var opening_hours : Opening_hours?
    var translated_opening_hours : Translated_opening_hours?
    var starting_price : Int?
    var ticket_prices : [Ticket_prices]?
//    var experience_tips : Array<String>?
    var is_liked : Bool?
    var reviews : [Reviews]?
    var rating : Int?
    var reviews_no : Int?
    var audio_url : String?
    var has_audio : Bool?
    
    init( id: String,
          title: String,
          cover_photo: String,
          descriptionText: String,
          views_no:Int,
          likes_no: Int,
          recommended: Int = 0,
          has_video: Int = 0,
          tags : [Tags]? = [] ,
          city : City? = nil,
          tour_html : String = "",
          famous_figure : String? = "",
          period : Period? = nil,
          era : Era? = nil,
          founded : String? = "",
          detailed_description : String? = "",
          address : String? = "",
          gmap_location : Gmap_location? = nil,
          opening_hours : Opening_hours? = nil,
          translated_opening_hours : Translated_opening_hours? = nil,
          starting_price : Int? = 0,
          ticket_prices : [Ticket_prices]? = [],
//          experience_tips : Array<String>? = [],
          is_liked : Bool? = false,
          reviews : [Reviews]? = [],
          rating : Int? = 0 ,
          reviews_no : Int? = 0,
          audio_url : String? = "",
          has_audio : Bool? = false
    ) {
        self.title = title
        self.id = id
        self.cover_photo = cover_photo
        self.descriptionText = descriptionText
        self.views_no = views_no
        self.likes_no = likes_no
        self.recommended = recommended
        self.has_video = has_video
        self.tags = tags
        self.city = city
        self.tour_html = tour_html
        self.famous_figure = famous_figure
        self.period = period
        self.era = era
        self.founded = founded
        self.detailed_description = detailed_description
        self.address = address
        self.gmap_location = gmap_location
        self.opening_hours = opening_hours
        self.translated_opening_hours = translated_opening_hours
        self.starting_price = starting_price
        self.ticket_prices = ticket_prices
//        self.experience_tips = experience_tips
        self.is_liked = is_liked
        self.reviews = reviews
        self.rating = rating
        self.reviews_no = reviews_no
        self.audio_url = audio_url
        self.has_audio = has_audio
        
    }
}
