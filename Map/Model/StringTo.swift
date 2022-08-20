//
//  StringTo.swift
//  Map
//
//  Created by 五十嵐諒 on 2022/08/14.
//

import Foundation
struct StringTo<T: LosslessStringConvertible> {
    let value:T
}

extension StringTo : Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let string = try container.decode(String.self)
        
        guard let value = T(string) else {
            let debugDescription = "'\(string)' could not convert to \(T.self)."
            let context = DecodingError.Context(
                codingPath: decoder.codingPath,
                debugDescription: debugDescription
            )
            throw DecodingError.dataCorrupted(context)
        }
        self.value = value
    }
}

extension StringTo : Encodable {
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(value.description)
    }
}
