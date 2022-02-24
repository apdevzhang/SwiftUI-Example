//
//  TextEditorExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct TextEditorExamplePage: View {
    
    @State private var fullText: String = "This is some editable text..."
    
    var body: some View {
        TextEditor(text: $fullText)
            .foregroundColor(.gray)
            .font(.custom("HelveticaNeue", size: 13))
            .lineSpacing(5)
    }
    
}

struct TextEditorExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorExamplePage()
    }
}
