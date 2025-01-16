/* 
Copyright (c) 2025 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Translated_opening_hours : Codable {
	let sunday : Sunday?
	let monday : Monday?
	let tuesday : Tuesday?
	let wednesday : Wednesday?
	let thursday : Thursday?
	let friday : Friday?
	let saturday : Saturday?

	enum CodingKeys: String, CodingKey {

		case sunday = "sunday"
		case monday = "monday"
		case tuesday = "tuesday"
		case wednesday = "wednesday"
		case thursday = "thursday"
		case friday = "friday"
		case saturday = "saturday"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		sunday = try values.decodeIfPresent(Sunday.self, forKey: .sunday)
		monday = try values.decodeIfPresent(Monday.self, forKey: .monday)
		tuesday = try values.decodeIfPresent(Tuesday.self, forKey: .tuesday)
		wednesday = try values.decodeIfPresent(Wednesday.self, forKey: .wednesday)
		thursday = try values.decodeIfPresent(Thursday.self, forKey: .thursday)
		friday = try values.decodeIfPresent(Friday.self, forKey: .friday)
		saturday = try values.decodeIfPresent(Saturday.self, forKey: .saturday)
	}

}