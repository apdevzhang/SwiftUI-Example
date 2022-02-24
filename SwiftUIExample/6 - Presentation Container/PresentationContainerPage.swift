//
//  PresentationContainerPage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct PresentationContainerPage: View {
    var body: some View {
        List {
            // MARK: 6.1 - Navigation
            Section(header: Text("6.1 - Navigation")) {
                NavigationLink(destination: NavigationViewExamplePage()) {
                    ExamplePageRow(title: "6.1.1 - NavigationView", subtitle: "NavigationView示例")
                }
                NavigationLink(destination: NavigationLinkExamplePage()) {
                    ExamplePageRow(title: "6.1.2 - NavigationLink", subtitle: "NavigationLink示例")
                }
            }
            
            // MARK: 6.2 - Outlines
            Section(header: Text("6.2 - Outlines")) {
                NavigationLink(destination: OutlineGroupExamplePage()) {
                    ExamplePageRow(title: "6.2.2 - OutlineGroup", subtitle: "OutlineGroup示例")
                }
                NavigationLink(destination: DisclosureGroupExamplePage()) {
                    ExamplePageRow(title: "6.2.2 - DisclosureGroup", subtitle: "DisclosureGroup示例")
                }
            }
            
            // MARK: 6.3 - Tab Views
            Section(header: Text("6.3 - Tab Views")) {
                NavigationLink(destination: TabViewExamplePage()) {
                    ExamplePageRow(title: "6.3.1 - TabView", subtitle: "TabView示例")
                }
            }
            
            // MARK: 6.4 - Split Views
            Section(header: Text("6.4 - Split Views")) {
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/hsplitview")) {
                    ExamplePageRow(title: "6.4.1 - HSplitView", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/vsplitview")) {
                    ExamplePageRow(title: "6.4.2 - VSplitView", subtitle: "Official WebSite")
                }
            }
            
            // MARK: 6.5 - Toolbars
            Section(header: Text("6.5 - Toolbars")) {
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/toolbaritem")) {
                    ExamplePageRow(title: "6.5.1 - ToolbarItem", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/toolbaritemgroup")) {
                    ExamplePageRow(title: "6.5.2 - ToolbarItemGroup", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/toolbaritemplacement")) {
                    ExamplePageRow(title: "6.5.3 - ToolbarItemPlacement", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/toolbarcontent")) {
                    ExamplePageRow(title: "6.5.4 - ToolbarContent", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/customizabletoolbarcontent")) {
                    ExamplePageRow(title: "6.5.5 - CustomizableToolbarContent", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/toolbarcontentbuilder")) {
                    ExamplePageRow(title: "6.5.6 - ToolbarContentBuilder", subtitle: "Official WebSite")
                }
            }
        }
        .listStyle(.grouped)
        .navigationBarTitle(Text("Presentation Container"), displayMode: .large)
    }
}

struct PresentationContainerPage_Previews: PreviewProvider {
    static var previews: some View {
        PresentationContainerPage()
    }
}
