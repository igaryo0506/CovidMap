//
//  ViewModel.swift
//  Map
//
//  Created by 五十嵐諒 on 2022/08/14.
//

import Foundation
import Combine
import SwiftUI
import MapKit


class ViewModel:ObservableObject {
    let constData = 2000
    private let dateFormatter: DateFormatter
    private var cancellables: Set<AnyCancellable> = []

    @Published var date: Date = Date()
    @Published var cityData: [String: City] = Const.defaultCities
    
    init() {
        dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        dateFormatter.timeZone = NSTimeZone(name: "JP") as TimeZone?

        // @Publishedは最初の初期化時にはsinkが流れない
        getJsonData()

        // Published<Date>
        _date.projectedValue
            .debounce(for: 0.2, scheduler: DispatchQueue.main)
            .sink { [weak self] date in
                // dateが変更されるたびに呼ばれる
                self?.getJsonData()
            }
            .store(in: &cancellables)
    }
    
    func getJsonData() {
        print("request sended")
        let strUrl: String = "https://opendata.corona.go.jp/api/Covid19JapanAll?date=" + myFormatter(date: date)
        let url: URL = URL(string:strUrl)!
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data, error == nil else {
                print(error?.localizedDescription as Any)
                return
            }
            print("json got")
            let decoder = JSONDecoder()
            do {
                let covidData = try decoder.decode(CovidData.self,from: data)
                DispatchQueue.main.async { [weak self] in
                    guard let self = self else {
                        return
                    }
                    if covidData.itemList.count == 0 {
                        let cities = self.cityData
                        for city in cities {
                            self.cityData[city.key]?.amount = 0
                        }
                    }
                    for data in covidData.itemList{
                        self.cityData[data.name_jp]?.amount = Int(data.npatients) ?? 0
                    }
                }
            } catch let parseError {
                print("JSON Error \(parseError.localizedDescription)")
            }
        }
        .resume()
    }
    
    func myFormatter(date:Date) -> String {
        return dateFormatter.string(from: date) as String
    }
}

