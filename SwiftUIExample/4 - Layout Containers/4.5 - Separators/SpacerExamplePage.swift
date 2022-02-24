//
//  SpacerExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct SpacerExamplePage: View {
    
    let name: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark")
            Spacer()
            Text(name)
        }
        .border(Color.blue)
    }
    
}

struct SpacerExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        SpacerExamplePage(name: "")
    }
}
