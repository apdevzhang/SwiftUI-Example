//
//  LazyHStackExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

// The stack is “lazy,” in that the stack view doesn’t create items until it needs to render them onscreen.
struct LazyHStackExamplePage: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .top, spacing: 10) {
                ForEach(1...100, id: \.self) {
                    Text("Column \($0)")
                }
            }
        }
    }
}

struct LazyHStackExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        LazyHStackExamplePage()
    }
}
