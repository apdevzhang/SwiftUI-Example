//
//  ForEachExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

private struct NamedFont: Identifiable {
    let name: String
    let font: Font
    var id: String { name }
}

struct ForEachExamplePage: View {
    
    private let namedFonts: [NamedFont] = [
        NamedFont(name: "Large Title", font: .largeTitle),
        NamedFont(name: "Title", font: .title),
        NamedFont(name: "Headline", font: .headline),
        NamedFont(name: "Body", font: .body),
        NamedFont(name: "Caption", font: .caption)
    ]
    
    var body: some View {
        ForEach(namedFonts) { namedFont in
            Text(namedFont.name)
                .font(namedFont.font)
        }
    }
}

struct ForEachExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        ForEachExamplePage()
    }
}
