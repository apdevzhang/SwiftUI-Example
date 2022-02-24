//
//  ColorPickerExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/22.
//

import SwiftUI

// iOS 14.0+
struct ColorPickerExamplePage: View {
    
    @State private var bgColor =
            Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    
    
    var body: some View {
        VStack {
            ColorPicker("Alignment Guides", selection: $bgColor)
        }
    }
    
}

struct ColorPickerExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerExamplePage()
    }
}
