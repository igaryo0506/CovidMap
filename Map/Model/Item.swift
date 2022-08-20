//
//  Item.swift
//  Map
//
//  Created by 五十嵐諒 on 2022/08/14.
//

import Foundation


struct Item: Codable, Hashable{
    var date: String
    var name_jp: CityName
    var npatients: String
}

/*
 {
    date: "2022/02/03",
    name_jp: "東京", ←SingleValueContainer
    npatients: "1000"
 }
 */
