//
//  SliderExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/22.
//

import SwiftUI

struct SliderExamplePage: View {
    
    @State private var speed = 50.0
    @State private var isEditing = false
        
    var body: some View {
        VStack {
            Slider(
                value: $speed,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            Text("\(speed)")
                .foregroundColor(isEditing ? .red : .blue)
        }
        
        Divider()
        
        Slider(
            value: $speed,
            in: 0...100,
            step: 5
        ) {
            Text("Speed")
        } minimumValueLabel: {
            Text("0")
        } maximumValueLabel: {
            Text("100")
        } onEditingChanged: { editing in
            isEditing = editing
        }
        Text("\(speed)")
            .foregroundColor(isEditing ? .red : .blue)
    }
}

struct SliderExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        SliderExamplePage()
    }
}
