//
//  CovidData.swift
//  Map
//
//  Created by 五十嵐諒 on 2022/08/14.
//

import Foundation
struct CovidData: Codable{
    var errorInfo:Error
    var itemList:[Item]
}
