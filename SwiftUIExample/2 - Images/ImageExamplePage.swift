//
//  ImageExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/22.
//
//  https://developer.apple.com/documentation/swiftui/fitting-images-into-available-space

import SwiftUI

struct ImageExamplePage: View {
    
    private var imageURL: URL = URL(string: "https://imgtu.com/i/bp9H0g")!
    
    var body: some View {
        
        // Normal
        Image("avatar")
//            .resizable()
            .frame(width: 300, height: 300, alignment: .top)
            .border(.blue)
            .cornerRadius(20)
            .aspectRatio(contentMode: .fill)
//            .scaledToFill()
            .clipped()
            
    }
    
}

struct ImageExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        ImageExamplePage()
    }
}
