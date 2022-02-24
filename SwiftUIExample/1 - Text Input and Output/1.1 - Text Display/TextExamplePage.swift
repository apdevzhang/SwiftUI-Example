//
//  TextExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/22.
//

import SwiftUI

struct TextExamplePage: View {
    
    let attriubtedString = try! AttributedString(markdown: "hoxjo")
    
    var body: some View {
        Text("一个普通文本")
        Text("十个字十个字十个字")
            .bold()
            .foregroundColor(.orange)
            .font(.footnote)
            .opacity(10)
        
        // eg.1
        Text("hoxjo").font(.title)
        
        // eg.2
        Text("hoxjo").font(.system(size: 12, weight: .light, design: .serif)).italic()
        
        // eg.3
        Text(attriubtedString).font(.system(size: 12, weight: .light, design: .serif))
        
        // eg.4
        Text("To be, or not to be, that is the question:").frame(width: 100)
        
        // eg.5
        Text("To be, or not to be, that is the question:").frame(width: 100).lineLimit(1)
    }
}

struct TextExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        TextExamplePage()
    }
}
