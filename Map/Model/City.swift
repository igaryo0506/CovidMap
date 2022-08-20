//
//  City.swift
//  Map
//
//  Created by 五十嵐諒 on 2022/08/19.
//

import Foundation
import CoreLocation


struct City: Identifiable {
    var id: String {
        name.localizedString
    }

    var name: CityName
    var lat: Double
    var lng: Double
    var amount: Int

    init(name: CityName, lat: Double, lng: Double, amount: Int = 0) {
        self.name = name
        self.lat = lat
        self.lng = lng
        self.amount = amount
    }
}

// MARK: CoreLocation
extension City {
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: lat,
            longitude: lng
        )
    }
}

// MARK: CityName
enum CityName: String, Codable, Hashable {
    case saitama = "埼玉県"
    case tokyo = "東京都"
    case kanagawa = "神奈川県"
    case other

    var localizedString: String {
        rawValue
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let name = try container.decode(String.self)
        if let cityName = CityName(rawValue: name) {
            self = cityName
        } else {
            self = .other
        }
    }
}
