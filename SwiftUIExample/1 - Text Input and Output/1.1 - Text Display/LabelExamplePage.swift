//
//  LabelExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/22.
//
//  https://developer.apple.com/documentation/swiftui/label

import SwiftUI

struct LabelExamplePage: View {
    var body: some View {
        Label("Lighting", systemImage: "bolt.fill")
        Label("Lightning", systemImage: "bolt.fill")
            .labelStyle(.titleOnly)
        Label("Lightning", systemImage: "bolt.fill")
            .labelStyle(.iconOnly)
        Label("Lightning", systemImage: "bolt.fill")
            .labelStyle(.titleAndIcon)
        
        VStack {
            Label("Rain", systemImage: "cloud.rain")
            Label("Snow", systemImage: "snow")
            Label("Sun", systemImage: "sun.max")
        }
//        .labelStyle(.iconOnly)
    }
}

struct LabelExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        LabelExamplePage()
    }
}
