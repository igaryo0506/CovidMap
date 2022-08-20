//
//  MyMap.swift
//  Map
//
//  Created by 五十嵐諒 on 2022/08/19.
//

import SwiftUI
import MapKit


struct MyMap: View {

    @EnvironmentObject var viewModel: ViewModel

    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 35.6762, longitude: 139.6503),
        span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20)
    )

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: Array(viewModel.cityData.values)) { city in
            MapAnnotation(coordinate: city.coordinate) {
                // Binding<City?> → Binding<City>?
                CityCell(
                    city: Binding($viewModel.cityData[city.name])!,
                    region: $region
                )
            }
        }
        .ignoresSafeArea()
    }
}

struct MyMap_Previews: PreviewProvider {
    static var previews: some View {
        return MyMap().environmentObject(ViewModel())
    }
}
