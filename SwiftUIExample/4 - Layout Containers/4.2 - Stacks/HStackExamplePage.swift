//
//  HStackExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct HStackExamplePage: View {
    var body: some View {
        HStack(
            alignment: .top,
            spacing: 10
        ) {
            ForEach(
                1...5,
                id: \.self
            ) {
                Text("Item \($0)")
            }
        }
    }
}

struct HStackExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        HStackExamplePage()
    }
}
