//
//  ScrollViewExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct ScrollViewExamplePage: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(0..<100) {
                    Text("Row \($0)")
                }
            }
        }
    }
}

struct ScrollViewExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewExamplePage()
    }
}
