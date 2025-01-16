/* 
Copyright (c) 2025 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
class PlaceData : Codable, Identifiable {
	let id : String?
	let title : String?
	let cover_photo : String?
	let description : String?
	let views_no : Int?
	let likes_no : Int?
	let recommended : Int?
	let has_video : Int?
	let tags : [Tags]?
	let city : City?
	let tour_html : String?
	let famous_figure : String?
    let period : Period?
	let era : Era?
	let founded : String?
	let detailed_description : String?
	let address : String?
	let gmap_location : Gmap_location?
	let opening_hours : Opening_hours?
	let translated_opening_hours : Translated_opening_hours?
	let starting_price : Int?
	let ticket_prices : [Ticket_prices]?
	let experience_tips : [String]?
	let is_liked : String?
    let reviews : [Reviews]?
	let rating : Int?
	let reviews_no : Int?
	let audio_url : String?
	let has_audio : Bool?

    init( id: String,
          title: String,
          cover_photo: String,
          description: String,
          views_no:Int,
          likes_no: Int,
          recommended: Int = 0,
          has_video: Int = 0,
          tags : [Tags]? = nil,
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
          ticket_prices : [Ticket_prices]? = nil,
          experience_tips : [String]? = nil,
          is_liked : String? = "",
          reviews : [Reviews]? = nil,
          rating : Int? = nil,
          reviews_no : Int? = nil,
          audio_url : String? = "",
          has_audio : Bool? = false
) {
        self.title = title
        self.id = id
        self.cover_photo = cover_photo
        self.description = description
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
        self.experience_tips = experience_tips
        self.is_liked = is_liked
        self.reviews = reviews
        self.rating = rating
        self.reviews_no = reviews_no
        self.audio_url = audio_url
        self.has_audio = has_audio
        
    }
	enum CodingKeys: String, CodingKey {

		case id = "id"
		case title = "title"
		case cover_photo = "cover_photo"
		case description = "description"
		case views_no = "views_no"
		case likes_no = "likes_no"
		case recommended = "recommended"
		case has_video = "has_video"
		case tags = "tags"
		case city = "city"
		case tour_html = "tour_html"
		case famous_figure = "famous_figure"
		case period = "period"
		case era = "era"
		case founded = "founded"
		case detailed_description = "detailed_description"
		case address = "address"
		case gmap_location = "gmap_location"
		case opening_hours = "opening_hours"
		case translated_opening_hours = "translated_opening_hours"
		case starting_price = "starting_price"
		case ticket_prices = "ticket_prices"
		case experience_tips = "experience_tips"
		case is_liked = "is_liked"
		case reviews = "reviews"
		case rating = "rating"
		case reviews_no = "reviews_no"
		case audio_url = "audio_url"
		case has_audio = "has_audio"
	}

    required init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		cover_photo = try values.decodeIfPresent(String.self, forKey: .cover_photo)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		views_no = try values.decodeIfPresent(Int.self, forKey: .views_no)
		likes_no = try values.decodeIfPresent(Int.self, forKey: .likes_no)
		recommended = try values.decodeIfPresent(Int.self, forKey: .recommended)
		has_video = try values.decodeIfPresent(Int.self, forKey: .has_video)
		tags = try values.decodeIfPresent([Tags].self, forKey: .tags)
		city = try values.decodeIfPresent(City.self, forKey: .city)
		tour_html = try values.decodeIfPresent(String.self, forKey: .tour_html)
		famous_figure = try values.decodeIfPresent(String.self, forKey: .famous_figure)
		period = try values.decodeIfPresent(Period.self, forKey: .period)
		era = try values.decodeIfPresent(Era.self, forKey: .era)
		founded = try values.decodeIfPresent(String.self, forKey: .founded)
		detailed_description = try values.decodeIfPresent(String.self, forKey: .detailed_description)
		address = try values.decodeIfPresent(String.self, forKey: .address)
		gmap_location = try values.decodeIfPresent(Gmap_location.self, forKey: .gmap_location)
		opening_hours = try values.decodeIfPresent(Opening_hours.self, forKey: .opening_hours)
		translated_opening_hours = try values.decodeIfPresent(Translated_opening_hours.self, forKey: .translated_opening_hours)
		starting_price = try values.decodeIfPresent(Int.self, forKey: .starting_price)
		ticket_prices = try values.decodeIfPresent([Ticket_prices].self, forKey: .ticket_prices)
		experience_tips = try values.decodeIfPresent([String].self, forKey: .experience_tips)
		is_liked = try values.decodeIfPresent(String.self, forKey: .is_liked)
        reviews = try values.decodeIfPresent([Reviews].self, forKey: .reviews)
		rating = try values.decodeIfPresent(Int.self, forKey: .rating)
		reviews_no = try values.decodeIfPresent(Int.self, forKey: .reviews_no)
		audio_url = try values.decodeIfPresent(String.self, forKey: .audio_url)
		has_audio = try values.decodeIfPresent(Bool.self, forKey: .has_audio)
	}

}
