//
//  LinkExamplePage.swift
//  Demo
//
//  Created by BANYAN on 2022/2/22.
//
//  https://developer.apple.com/documentation/swiftui/link

import SwiftUI

struct LinkExamplePage: View {
    
    private let url: URL = URL(string: "https://developer.apple.com/documentation/swiftui/link")!
    
    var body: some View {
        
        // eg.1
        Link("SwiftUI Link Document", destination: url)
            .foregroundColor(.orange)        
        
        Divider()
        
        // eg.2
        Link("SwiftUI Link Document", destination: url)
            .environment(\.openURL, OpenURLAction { url in
                print("open \(url)")
                return .handled
            })
        
    }
}

struct LinkExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        LinkExamplePage()
    }
}
