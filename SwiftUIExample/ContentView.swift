//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                // MARK: 1 - Text Input and Output
                Section(header: Text("1 - Text Input and Output")) {
                    NavigationLink(destination: TextInputAndOutputPage()) {
                        ExamplePageRow(title: "Text Input and Output", subtitle: "查看分类")
                    }
                }
                
                // MARK: 2 - Images
                Section(header: Text("2 - Image")) {
                    NavigationLink(destination: ImageExamplePage()) {
                        ExamplePageRow(title: "2.1 - Image", subtitle: "Image示例")
                    }
                    NavigationLink(destination: AsyncImageExamplePage()) {
                        ExamplePageRow(title: "2.2 - AsyncImage", subtitle: "AsyncImage示例")
                    }
                }
                
                // MARK: 3 - Controls and Indicators
                Section(header: Text("3 - Controls and Indicators")) {
                    NavigationLink(destination: ControlsAndIndicatorsPage()) {
                        ExamplePageRow(title: "Controls and Indicators", subtitle: "查看分类")
                    }
                }
                
                // MARK: 4 - Layout Containers
                Section(header: Text("4 - Layout Containers")) {
                    NavigationLink(destination: LayoutContainersPage()) {
                        ExamplePageRow(title: "Layout Containers", subtitle: "查看分类")
                    }
                }
                
                // MARK: 5 - Collection Containers
                Section(header: Text("5 - Collection Containers")) {
                    NavigationLink(destination: CollectionContainersPage()) {
                        ExamplePageRow(title: "Collection Containers", subtitle: "查看分类")
                    }
                }
                
                // MARK: 6 - Presentation Container
                Section(header: Text("6 - Presentation Container")) {
                    NavigationLink(destination: PresentationContainerPage()) {
                        ExamplePageRow(title: "Presentation Container", subtitle: "查看分类")
                    }
                }
            }
            .navigationBarTitle(Text("SwiftUI Example"), displayMode: .large)
            .listStyle(.grouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
