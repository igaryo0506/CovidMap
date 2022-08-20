//
//  ContentView.swift
//  Map
//
//  Created by 五十嵐諒 on 2022/08/14.
//

import SwiftUI
import MapKit

struct ContentView: View {

    let viewModel: ViewModel

    var body: some View {
        VStack{
            MyMap()
            MyDatePicker()
        }
        .environmentObject(viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}
