//
//  VStackExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct VStackExamplePage: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 10
        ) {
            ForEach(
                1...10,
                id: \.self
            ) {
                Text("Item \($0)")
            }
        }
    }
}

struct VStackExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        VStackExamplePage()
    }
}
