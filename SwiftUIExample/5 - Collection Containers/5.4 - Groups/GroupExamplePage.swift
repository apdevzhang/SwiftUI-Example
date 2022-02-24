//
//  GroupExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct GroupExamplePage: View {
    var body: some View {
        Group {
            Text("SwiftUI")
            Text("Combine")
            Text("Swift System")
        }
        .font(.headline)
        
        VStack {
            Group {
                Text("1")
                Text("2")
                Text("3")
                Text("4")
                Text("5")
                Text("6")
                Text("7")
                Text("8")
                Text("9")
                Text("10")
            }
            Text("11")
        }
    }
}

struct GroupExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        GroupExamplePage()
    }
}
