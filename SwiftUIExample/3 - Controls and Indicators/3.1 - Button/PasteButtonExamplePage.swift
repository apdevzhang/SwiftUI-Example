//
//  PasteButtonExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/22.
//
//  https://developer.apple.com/documentation/swiftui/pastebutton

import SwiftUI

// 将 import UniformTypeIdentifiers 添加到您的 swift 文件以访问 UTType
// https://www.itbaoku.cn/post/2139605/do
import UniformTypeIdentifiers

struct PasteButtonExamplePage: View {
    
    @State private var pastedText: String = ""
    private let plainTextUTIIdentifier = UTType.utf8PlainText.identifier
    
    var body: some View {
//        HStack {
//            PasteButton(
//                supportedContentTypes: [.utf8PlainText]
//             ) { itemProviders in
//                itemProviders.first(where: {
//                                        $0.hasItemConformingToTypeIdentifier(
//                                            plainTextUTIIdentifier)})?
//                    .loadDataRepresentation(forTypeIdentifier:
//                                                plainTextUTIIdentifier) { data, _ in
//                        if let data = data,
//                           let string = String(data: data, encoding: .utf8) {
//                            pastedText = string
//                        }
//                    }
//            }
//            Divider()
//            Text(pastedText)
//            Spacer()
//        }
        Text("PasteButton' is unavailable in iOS")
    }
    
}

struct PasteButtonExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        PasteButtonExamplePage()
    }
}
