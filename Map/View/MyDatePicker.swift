//
//  MyDatePicker.swift
//  Map
//
//  Created by 五十嵐諒 on 2022/08/19.
//

import SwiftUI

struct MyDatePicker: View {
    @EnvironmentObject var viewModel: ViewModel

    var body: some View {
        DatePicker("Select Date", selection: $viewModel.date, displayedComponents: .date)
            .datePickerStyle(WheelDatePickerStyle())
            .padding()            
            .labelsHidden()
    }
}

struct MyDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        MyDatePicker()
            .environmentObject(ViewModel())
    }
}
