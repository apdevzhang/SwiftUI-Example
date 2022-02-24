//
//  TextInputAndOutputPage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct TextInputAndOutputPage: View {
    var body: some View {
        List {
            // MARK: 1.1 - Text Display
            Section(header: Text("1.1 - Text Display")) {
                NavigationLink(destination: TextExamplePage()) {
                    ExamplePageRow(title: "1.1.1 - Text", subtitle: "Text示例")
                }
                NavigationLink(destination: LabelExamplePage()) {
                    ExamplePageRow(title: "1.1.2 - Label", subtitle: "Label示例")
                }
            }
            
            // MARK: 1.2 - Text Entry
            Section(header: Text("1.2 - Text Entry")) {
                NavigationLink(destination: TextFieldExamplePage()) {
                    ExamplePageRow(title: "1.2.1 - TextField", subtitle: "TextField示例")
                }
                NavigationLink(destination: SecureFieldExamplePage()) {
                    ExamplePageRow(title: "1.2.2 - SecureField", subtitle: "SecureField示例")
                }
                NavigationLink(destination: TextEditorExamplePage()) {
                    ExamplePageRow(title: "1.2.3 - TextEditor", subtitle: "TextEditor示例")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/textinputautocapitalization")) {
                    ExamplePageRow(title: "1.2.4 - TextInputAutocapitalization", subtitle: "Official WebSite")
                }
            }
            
            // MARK: 1.3 - `Text Style`
            Section(header: Text("1.3 - Text Style")) {
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/applying-custom-fonts-to-text")) {
                    ExamplePageRow(title: "1.3.1 - Applying Custom Fonts to Text", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/font")) {
                    ExamplePageRow(title: "1.3.2 - Font", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/scaledmetric")) {
                    ExamplePageRow(title: "1.3.3 - ScaledMetric", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/text/case")) {
                    ExamplePageRow(title: "1.3.4 - Case", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/text/datestyle")) {
                    ExamplePageRow(title: "1.3.5 - DateStyle", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/text/linestyle")) {
                    ExamplePageRow(title: "1.3.6 - LineStyle", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/legibilityweight")) {
                    ExamplePageRow(title: "1.3.7 - LegibilityWeight", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/dynamictypesize")) {
                    ExamplePageRow(title: "1.3.8 - DynamicTypeSize", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/redactionreasons")) {
                    ExamplePageRow(title: "1.3.9 - RedactionReasons", subtitle: "Official WebSite")
                }
            }
            
            // MARK: 1.4 - `Text Layout`
            Section(header: Text("1.4 - Text Layout")) {
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/textalignment")) {
                    ExamplePageRow(title: "1.4.1 - TextAlignment", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/text/truncationmode")) {
                    ExamplePageRow(title: "1.4.2 - TruncationMode", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/layoutdirection")) {
                    ExamplePageRow(title: "LayoutDirection", subtitle: "Official WebSite")
                }
            }
            
            // MARK: 1.5 - `Localization`
            Section(header: Text("1.5 - Localization")) {
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/preparing-views-for-localization")) {
                    ExamplePageRow(title: "1.5.1 - Preparing Views for Localization", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/localizedstringkey")) {
                    ExamplePageRow(title: "1.5.2 - LocalizedStringKey", subtitle: "Official WebSite")
                }
            }
        }
        .listStyle(.grouped)
        .navigationBarTitle(Text("Text Input and Output"), displayMode: .large)
    }
}

struct TextInputAndOutputPage_Previews: PreviewProvider {
    static var previews: some View {
        TextInputAndOutputPage()
    }
}
