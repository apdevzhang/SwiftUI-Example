//
//  DatePickerExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/22.
//

import SwiftUI

struct DatePickerExamplePage: View {
    
    @State private var date = Date()
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2021, month: 1, day: 1)
        let endComponents = DateComponents(year: 2021, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
            ...
            calendar.date(from:endComponents)!
    }()
    
    var body: some View {
        DatePicker(
            "Start Date",
            selection: $date,
            displayedComponents: [.date]
        )
        
        DatePicker(
            "Start Date",
             selection: $date,
             in: dateRange,
             displayedComponents: [.date, .hourAndMinute]
        )
        
        DatePicker(
            "Start Date",
            selection: $date,
            displayedComponents: [.date]
        )
        .datePickerStyle(.graphical)
    }
    
}

struct DatePickerExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerExamplePage()
    }
}
