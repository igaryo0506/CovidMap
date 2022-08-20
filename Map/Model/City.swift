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
        name
    }
    let name: String
    let coordinate: CLLocationCoordinate2D
    var amount:Int = 0
}
