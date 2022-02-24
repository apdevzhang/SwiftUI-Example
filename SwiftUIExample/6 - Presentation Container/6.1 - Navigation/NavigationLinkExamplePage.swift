//
//  NavigationLinkExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct ColorDetail: View {
    var color: Color

    var body: some View {
        color
            .frame(width: 200, height: 200)
            .navigationTitle(color.description.capitalized)
    }
}

struct NavigationLinkExamplePage: View {
    
    @State private var shouldShowPurple = false
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    "Purple",
                    destination: ColorDetail(color: .purple),
                    isActive: $shouldShowPurple)
                NavigationLink("Pink", destination: ColorDetail(color: .pink))
                NavigationLink("Orange", destination: ColorDetail(color: .orange))
                Text("Select a Color") // A placeholder to show before selection.
            }
            .navigationTitle("Colors")
        }
    }
}

struct NavigationLinkExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkExamplePage()
    }
}
