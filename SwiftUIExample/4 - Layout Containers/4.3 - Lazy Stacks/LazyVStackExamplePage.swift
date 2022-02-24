//
//  LazyVStackExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct LazyVStackExamplePage: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(1...100, id: \.self) {
                    Text("Row \($0)")
                }
            }
        }
    }
}

struct LazyVStackExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStackExamplePage()
    }
}
