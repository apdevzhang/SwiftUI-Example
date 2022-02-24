//
//  ZStackExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct ZStackExamplePage: View {
    
    let colors: [Color] =
        [.red, .orange, .yellow, .green, .blue, .purple]
        
    var body: some View {
        List {
            ZStack {
                ForEach(0..<colors.count) {
                    Rectangle()
                        .fill(colors[$0])
                        .frame(width: 100, height: 100)
                        .offset(x: CGFloat($0) * 10.0,
                                y: CGFloat($0) * 10.0)
                }
            }
            
            ZStack(alignment: .bottomLeading) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 50)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width:50, height: 100)
            }
            .border(Color.green, width: 1)
        }
    }
    
}

struct ZStackExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        ZStackExamplePage()
    }
}
