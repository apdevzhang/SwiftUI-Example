//
//  ListExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//
// https://developer.apple.com/documentation/swiftui/list

import SwiftUI

struct Ocean: Identifiable, Hashable {
    let name: String
    let id = UUID()
}

struct ListExamplePage: View {
    
    private var oceans = [
        Ocean(name: "Pacific"),
        Ocean(name: "Atlantic"),
        Ocean(name: "Indian"),
        Ocean(name: "Southern"),
        Ocean(name: "Arctic")
    ]
    
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        NavigationView {
            List(oceans, selection: $multiSelection) {
                Text($0.name)
            }
            .navigationTitle("Oceans")
            .toolbar { EditButton() }
        }
        Text("\(multiSelection.count) selections")
    }
}

struct ListExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        ListExamplePage()
    }
}
