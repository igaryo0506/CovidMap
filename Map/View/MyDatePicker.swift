//
//  MyDatePicker.swift
//  Map
//
//  Created by 五十嵐諒 on 2022/08/19.
//

import SwiftUI

struct MyDatePicker: View {
    @ObservedObject var viewModel:ViewModel
    @State var date = Date()
    var body: some View {
        DatePicker("Select Date",selection: $date,displayedComponents: .date)
            .datePickerStyle(WheelDatePickerStyle())
            .padding()
            .onChange(of: date){ date in
                viewModel.getJsonData(date: date)
            }
            .labelsHidden()
    }
}

struct MyDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        MyDatePicker(viewModel: ViewModel())
    }
}
