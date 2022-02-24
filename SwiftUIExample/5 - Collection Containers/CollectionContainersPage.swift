//
//  CollectionContainersPage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct CollectionContainersPage: View {
    var body: some View {
        List {
            // MARK: 5.1 - Lists
            Section(header: Text("5.1 - Lists")) {
                NavigationLink(destination: ListExamplePage()) {
                    ExamplePageRow(title: "5.1.1 - List", subtitle: "List示例")
                }
                NavigationLink(destination: ListItemTintExamplePage()) {
                    ExamplePageRow(title: "5.1.2 - ListItemTint", subtitle: "ListItemTint示例")
                }
                NavigationLink(destination: SectionExamplePage()) {
                    ExamplePageRow(title: "5.1.3 - Section", subtitle: "Section示例")
                }
                NavigationLink(destination: ForEachExamplePage()) {
                    ExamplePageRow(title: "5.1.4 - ForEach", subtitle: "ForEach示例")
                }
            }
            
            // MARK: 5.2 - Tables
            Section(header: Text("5.2 - Tables")) {
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/tables")) {
                    ExamplePageRow(title: "5.2.1 - Tables", subtitle: "Official WebSite")
                }
            }
            
            // MARK: 5.3 - Forms
            Section(header: Text("5.3 - Forms")) {
                NavigationLink(destination: FormExamplePage()) {
                    ExamplePageRow(title: "5.3.1 - Form", subtitle: "Form示例")
                }
            }
            
            // MARK: 5.4 - Groups
            Section(header: Text("5.4 - Groups")) {
                NavigationLink(destination: GroupExamplePage()) {
                    ExamplePageRow(title: "5.4.1 - Group", subtitle: "Group示例")
                }
                NavigationLink(destination: GroupBoxExamplePage()) {
                    ExamplePageRow(title: "5.4.2 - GroupBox", subtitle: "GroupBox示例")
                }
            }
            
            // MARK: 5.5 - ScrollViews
            Section(header: Text("5.5 - Scroll Views")) {
                NavigationLink(destination: ScrollViewExamplePage()) {
                    ExamplePageRow(title: "5.5.1 - ScrollView", subtitle: "ScrollView示例")
                }
                NavigationLink(destination: ScrollViewReaderExamplePage()) {
                    ExamplePageRow(title: "5.5.2 - ScrollViewReader", subtitle: "ScrollViewReader示例")
                }
            }
        }
        .listStyle(.grouped)
        .navigationBarTitle(Text("Collection Containers"), displayMode: .large)
    }
}

struct CollectionContainersPage_Previews: PreviewProvider {
    static var previews: some View {
        CollectionContainersPage()
    }
}
