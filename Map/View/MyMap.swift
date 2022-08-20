//
//  MyMap.swift
//  Map
//
//  Created by 五十嵐諒 on 2022/08/19.
//

import SwiftUI
import MapKit

struct MyMap: View {
    @ObservedObject var viewModel:ViewModel
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.6762, longitude: 139.6503), span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20))
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: Array(viewModel.cities.values)){ city in
            MapAnnotation(coordinate:city.coordinate){
                ZStack{
                    Circle()
                        .foregroundColor(Color.red.opacity(0.5))
                        .frame(width:CGFloat(sqrt(Float(city.amount) / Float(viewModel.constData) * 20 / Float(region.span.latitudeDelta))), height:CGFloat(sqrt(Float(city.amount) / Float(viewModel.constData) * 20 / Float(region.span.latitudeDelta))))
                }
            }
        }
        
        .ignoresSafeArea()
    }
}

struct MyMap_Previews: PreviewProvider {
    static var previews: some View {
        return MyMap(viewModel: ViewModel())
    }
}
