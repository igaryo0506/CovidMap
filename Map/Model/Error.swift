//
//  Error.swift
//  Map
//
//  Created by 五十嵐諒 on 2022/08/14.
//

import Foundation

struct Error: Codable{
    var errorFlag:String
    var errorCode:String?
    var errorMessage:String?
}
