//
//  City.swift
//  Map
//
//  Created by 五十嵐諒 on 2022/08/19.
//

import Foundation
import CoreLocation

struct City: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    var amount:Int = 0
}
