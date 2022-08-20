//
//  Cities.swift
//  Map
//
//  Created by 五十嵐諒 on 2022/08/19.
//

import Foundation

let cities:Dictionary<String,City> =
["北海道":City(name: "北海道", coordinate: CLLocationCoordinate2D(latitude: 43.06417, longitude: 141.34694)),
 "青森県":City(name: "青森県", coordinate: CLLocationCoordinate2D(latitude: 40.82444, longitude: 140.74)),
 "岩手県":City(name: "岩手県", coordinate: CLLocationCoordinate2D(latitude: 39.70361, longitude: 141.1525)),
 "宮城県":City(name: "宮城県", coordinate: CLLocationCoordinate2D(latitude: 38.26889, longitude: 140.87194)),
 "秋田県":City(name: "秋田県", coordinate: CLLocationCoordinate2D(latitude: 39.71861, longitude: 140.1025)),
 "山形県":City(name: "山形県", coordinate: CLLocationCoordinate2D(latitude: 38.24056, longitude: 140.36333)),
 "福島県":City(name: "福島県", coordinate: CLLocationCoordinate2D(latitude: 37.75, longitude: 140.46778)),
 "茨城県":City(name: "茨城県", coordinate: CLLocationCoordinate2D(latitude: 36.34139, longitude: 140.44667)),
 "栃木県":City(name: "栃木県", coordinate: CLLocationCoordinate2D(latitude: 36.56583, longitude: 139.88361)),
 "群馬県":City(name: "群馬県", coordinate: CLLocationCoordinate2D(latitude: 36.39111, longitude: 139.06083)),
 "埼玉県":City(name: "埼玉県", coordinate: CLLocationCoordinate2D(latitude: 35.85694, longitude: 139.64889)),
 "千葉県":City(name: "千葉県", coordinate: CLLocationCoordinate2D(latitude: 35.60472, longitude: 140.12333)),
 "東京都":City(name: "東京都", coordinate: CLLocationCoordinate2D(latitude: 35.68944, longitude: 139.69167)),
 "神奈川県":City(name: "神奈川県", coordinate: CLLocationCoordinate2D(latitude: 35.44778, longitude: 139.6425)),
 "新潟県":City(name: "新潟県", coordinate: CLLocationCoordinate2D(latitude: 37.90222, longitude: 139.02361)),
 "富山県":City(name: "富山県", coordinate: CLLocationCoordinate2D(latitude: 36.69528, longitude: 137.21139)),
 "石川県":City(name: "石川県", coordinate: CLLocationCoordinate2D(latitude: 36.59444, longitude: 136.62556)),
 "福井県":City(name: "福井県", coordinate: CLLocationCoordinate2D(latitude: 36.06528, longitude: 136.22194)),
 "山梨県":City(name: "山梨県", coordinate: CLLocationCoordinate2D(latitude: 35.66389, longitude: 138.56833)),
 "長野県":City(name: "長野県", coordinate: CLLocationCoordinate2D(latitude: 36.65139, longitude: 138.18111)),
 "岐阜県":City(name: "岐阜県", coordinate: CLLocationCoordinate2D(latitude: 35.39111, longitude: 136.72222)),
 "静岡県":City(name: "静岡県", coordinate: CLLocationCoordinate2D(latitude: 34.97694, longitude: 138.38306)),
 "愛知県":City(name: "愛知県", coordinate: CLLocationCoordinate2D(latitude: 35.18028, longitude: 136.90667)),
 "三重県":City(name: "三重県", coordinate: CLLocationCoordinate2D(latitude: 34.73028, longitude: 136.50861)),
 "滋賀県":City(name: "滋賀県", coordinate: CLLocationCoordinate2D(latitude: 35.00444, longitude: 135.86833)),
 "京都府":City(name: "京都府", coordinate: CLLocationCoordinate2D(latitude: 35.02139, longitude: 135.75556)),
 "大阪府":City(name: "大阪府", coordinate: CLLocationCoordinate2D(latitude: 34.68639, longitude: 135.52)),
 "兵庫県":City(name: "兵庫県", coordinate: CLLocationCoordinate2D(latitude: 34.69139, longitude: 135.18306)),
 "奈良県":City(name: "奈良県", coordinate: CLLocationCoordinate2D(latitude: 34.68528, longitude: 135.83278)),
 "和歌山県":City(name: "和歌山県", coordinate: CLLocationCoordinate2D(latitude: 34.22611, longitude: 135.1675)),
 "鳥取県":City(name: "鳥取県", coordinate: CLLocationCoordinate2D(latitude: 35.50361, longitude: 134.23833)),
 "島根県":City(name: "島根県", coordinate: CLLocationCoordinate2D(latitude: 35.47222, longitude: 133.05056)),
 "岡山県":City(name: "岡山県", coordinate: CLLocationCoordinate2D(latitude: 34.66167, longitude: 133.935)),
 "広島県":City(name: "広島県", coordinate: CLLocationCoordinate2D(latitude: 34.39639, longitude: 132.45944)),
 "山口県":City(name: "山口県", coordinate: CLLocationCoordinate2D(latitude: 34.18583, longitude: 131.47139)),
 "徳島県":City(name: "徳島県", coordinate: CLLocationCoordinate2D(latitude: 34.06583, longitude: 134.55944)),
 "香川県":City(name: "香川県", coordinate: CLLocationCoordinate2D(latitude: 34.34028, longitude: 134.04333)),
 "愛媛県":City(name: "愛媛県", coordinate: CLLocationCoordinate2D(latitude: 33.84167, longitude: 132.76611)),
 "高知県":City(name: "高知県", coordinate: CLLocationCoordinate2D(latitude: 33.55972, longitude: 133.53111)),
 "福岡県":City(name: "福岡県", coordinate: CLLocationCoordinate2D(latitude: 33.60639, longitude: 130.41806)),
 "佐賀県":City(name: "佐賀県", coordinate: CLLocationCoordinate2D(latitude: 33.24944, longitude: 130.29889)),
 "長崎県":City(name: "長崎県", coordinate: CLLocationCoordinate2D(latitude: 32.74472, longitude: 129.87361)),
 "熊本県":City(name: "熊本県", coordinate: CLLocationCoordinate2D(latitude: 32.78972, longitude: 130.74167)),
 "大分県":City(name: "大分県", coordinate: CLLocationCoordinate2D(latitude: 33.23806, longitude: 131.6125)),
 "宮崎県":City(name: "宮崎県", coordinate: CLLocationCoordinate2D(latitude: 31.91111, longitude: 131.42389)),
 "鹿児島県":City(name: "鹿児島県", coordinate: CLLocationCoordinate2D(latitude: 31.56028, longitude: 130.55806)),
 "沖縄県":City(name: "沖縄県", coordinate: CLLocationCoordinate2D(latitude: 26.2125, longitude: 127.68111))]
