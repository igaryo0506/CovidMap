//
//  CityCell.swift
//  Map
//
//  Created by Fumiya Tanaka on 2022/08/20.
//

import SwiftUI
import MapKit


struct CityCell: View {

    @Binding var city: City
    @Binding var region: MKCoordinateRegion

    var body: some View {
        Circle()
            .foregroundColor(.red.opacity(0.5))
            .frame(
                width:
                    sqrt(CGFloat(city.amount) / CGFloat(ViewModel.constData) * 20 / CGFloat(region.span.longitudeDelta)),
                height: sqrt(CGFloat(city.amount) / CGFloat(ViewModel.constData) * 20 / CGFloat(region.span.latitudeDelta)))
    }
}
