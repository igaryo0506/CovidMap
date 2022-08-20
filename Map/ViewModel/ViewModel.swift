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
    static let constData = 2000
    private let dateFormatter: DateFormatter
    private var cancellables: Set<AnyCancellable> = []

    @Published var date: Date = Date()

    @Published var shouldUpdateMap: Void = ()

    @Published var cityData: [CityName: City] = [
        .saitama: City(name: .saitama, lat: 35.85694, lng: 139.64889),
        .tokyo: City(name: .tokyo, lat: 35.68944, lng: 139.69167),
        .kanagawa: City(name: .kanagawa, lat: 35.44778, lng: 139.6425)
    ]

    
    init() {
        dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        dateFormatter.timeZone = NSTimeZone(name: "JP") as TimeZone?

        // @Publishedは最初の初期化時にはsinkが流れない
        getJsonData()

        // Published<Date>
        _date.projectedValue
            .eraseToAnyPublisher()
            .debounce(for: 0.1, scheduler: DispatchQueue.main)
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

        let decoder = JSONDecoder()
        URLSession.shared
            .dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: CovidData.self, decoder: decoder)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                case .finished:
                    self.shouldUpdateMap = ()
                }
            } receiveValue: { [weak self] covidData in
                guard let self = self else {
                    return
                }
                if covidData.itemList.count == 0 {
                    let cities = self.cityData
                    for city in cities {
                        self.cityData[city.key]?.amount = 0
                    }
                }
                for data in covidData.itemList {
                    self.cityData[data.name_jp]?.amount = Int(data.npatients) ?? 0
                }
            }
            .store(in: &cancellables)
    }
    
    func myFormatter(date: Date) -> String {
        return dateFormatter.string(from: date)
    }
}

