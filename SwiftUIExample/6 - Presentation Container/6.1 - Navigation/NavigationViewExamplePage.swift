//
//  NavigationViewExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct NavigationViewExamplePage: View {
    var body: some View {
        NavigationView {
            Text("https://developer.apple.com/documentation/swiftui/navigationview")
        }
        .navigationTitle(Text("NavigationViewExamplePage"))
    }
}

struct NavigationViewExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewExamplePage()
    }
}
