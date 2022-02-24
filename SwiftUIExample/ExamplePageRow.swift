//
//  ExamplePageRow.swift
//  Demo
//
//  Created by BANYAN on 2022/2/22.
//

import SwiftUI

struct ExamplePageRow: View {
    let title: String
    let subtitle: String?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title).bold()
            if subtitle != nil {
                Text(subtitle!).font(.subheadline).opacity(0.5)
            }
        }
    }
}

struct ExamplePageRow_Previews: PreviewProvider {
    static var previews: some View {
        ExamplePageRow(title: "", subtitle: "")
    }
}
