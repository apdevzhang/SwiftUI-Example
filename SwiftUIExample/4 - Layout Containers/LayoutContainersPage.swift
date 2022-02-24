//
//  LayoutContainersPage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct LayoutContainersPage: View {
    var body: some View {
        List {
            // MARK: 4.1 - Essentials
            Section(header: Text("4.1 - Essentials")) {
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/picking-container-views-for-your-content")) {
                    ExamplePageRow(title: "4.1.1 - Picking Container Views for Your Content", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/applying-custom-fonts-to-text")) {
                    ExamplePageRow(title: "4.1.2 - Inspecting View Layout", subtitle: "Official WebSite")
                }
            }
            
            // MARK: 4.2 - Stacks
            Section(header: Text("4.2 - Stacks")) {
                NavigationLink(destination: HStackExamplePage()) {
                    ExamplePageRow(title: "4.2.1 - HStack", subtitle: "HStack示例")
                }
                NavigationLink(destination: VStackExamplePage()) {
                    ExamplePageRow(title: "4.2.2 - VStack", subtitle: "VStack示例")
                }
                NavigationLink(destination: ZStackExamplePage()) {
                    ExamplePageRow(title: "4.2.3 - ZStack", subtitle: "ZStack示例")
                }
            }
            
            // MARK: 4.3 - Lazy Stacks
            Section(header: Text("4.3 - Lazy Stacks")) {
                NavigationLink(destination: LazyHStackExamplePage()) {
                    ExamplePageRow(title: "4.3.1 - LazyHStack", subtitle: "LazyHStack示例")
                }
                NavigationLink(destination: LazyVStackExamplePage()) {
                    ExamplePageRow(title: "4.3.2 - LazyVStack", subtitle: "LazyVStack示例")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/pinnedscrollableviews")) {
                    ExamplePageRow(title: "4.3.3 - PinnedScrollableViews", subtitle: "Official WebSite")
                }
            }
            
            // MARK: 4.4 - Grid
            Section(header: Text("4.4 - Grid")) {
                NavigationLink(destination: LazyHGridExamplePage()) {
                    ExamplePageRow(title: "4.4.1 - LazyHGrid", subtitle: "LazyHGrid示例")
                }
                NavigationLink(destination: LazyVGridExamplePage()) {
                    ExamplePageRow(title: "4.4.2 - LazyVGrid", subtitle: "LazyVGrid示例")
                }
            }
            
            // MARK: 4.5 - Seperators
            Section(header: Text("4.5 - Seperators")) {
                NavigationLink(destination: SpacerExamplePage(name: "hoxjo")) {
                    ExamplePageRow(title: "4.5.1 - Spacer", subtitle: "Spacer示例")
                }
                NavigationLink(destination: DividerExamplePage()) {
                    ExamplePageRow(title: "4.5.2 - Divider", subtitle: "Divider示例")
                }
            }
            
            // MARK: 4.6 - `Alignment`
            Section(header: Text("4.6 - Alignment")) {
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/aligning-views-within-a-stack")) {
                    ExamplePageRow(title: "4.6.1 - Aligning Views Within a Stack", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/aligning-views-across-stacks")) {
                    ExamplePageRow(title: "4.6.2 - Aligning Views Across Stacks", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/alignment")) {
                    ExamplePageRow(title: "4.6.3 - Alignment", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/horizontalalignment")) {
                    ExamplePageRow(title: "4.6.4 - HorizontalAlignment", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/verticalalignment")) {
                    ExamplePageRow(title: "4.6.5 - VerticalAlignment", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/alignmentid")) {
                    ExamplePageRow(title: "4.6.6 - AlignmentID", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/viewdimensions")) {
                    ExamplePageRow(title: "4.6.7 - ViewDimensions", subtitle: "Official WebSite")
                }
            }
            
            // MARK: 4.7 - `Edges and Regions`
            Section(header: Text("4.7 - Edges and Regions")) {
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/edge")) {
                    ExamplePageRow(title: "4.7.1 - Edge", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/horizontaledge")) {
                    ExamplePageRow(title: "4.7.2 - HorizontalEdge", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/verticaledge")) {
                    ExamplePageRow(title: "4.7.3 - VerticalEdge", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/edgeinsets")) {
                    ExamplePageRow(title: "4.7.4 - EdgeInsets", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/safearearegions")) {
                    ExamplePageRow(title: "4.7.5 - SafeAreaRegions", subtitle: "Official WebSite")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/anchor")) {
                    ExamplePageRow(title: "4.7.6 - Anchor", subtitle: "Official WebSite")
                }
            }
        }
        .listStyle(.grouped)
        .navigationBarTitle(Text("Layout Containers"), displayMode: .large)
    }
}

struct LayoutContainersPage_Previews: PreviewProvider {
    static var previews: some View {
        LayoutContainersPage()
    }
}
