//
//  ProgressViewExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/22.
//

import SwiftUI

struct DarkBlueShadowProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .shadow(color: Color(red: 0, green: 0, blue: 0.6),
                    radius: 4.0, x: 1.0, y: 2.0)
    }
}

struct ProgressViewExamplePage: View {
    
    @State private var progress = 0.5
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
            Button("More", action: { progress += 0.05 })
        }
        
        VStack {
            ProgressView(value: 0.25)
            ProgressView(value: 0.75)
        }
        .progressViewStyle(DarkBlueShadowProgressViewStyle())
    }
    
}

struct ProgressViewExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewExamplePage()
    }
}
