//
//  TabViewExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct TabViewExamplePage: View {
    var body: some View {
        TabView {
            Text("The First Tab")
                .badge(10)
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        .font(.headline)
    }
}

struct TabViewExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExamplePage()
    }
}
