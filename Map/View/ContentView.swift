//
//  ContentView.swift
//  Map
//
//  Created by 五十嵐諒 on 2022/08/14.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    @State var date = Date()
    
    var body: some View {
        VStack{
            MyMap(viewModel: viewModel)
            MyDatePicker(viewModel: viewModel)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
