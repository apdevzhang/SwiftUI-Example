//
//  DisclosureGroupExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct DisclosureGroupExamplePage: View {
    
    struct ToggleStates {
        var oneIsOn: Bool = false
        var twoIsOn: Bool = true
    }
    
    @State private var toggleStates = ToggleStates()
    @State private var topExpanded: Bool = true
    
    var body: some View {
        DisclosureGroup("Items", isExpanded: $topExpanded) {
            Toggle("Toggle 1", isOn: $toggleStates.oneIsOn)
            Toggle("Toggle 2", isOn: $toggleStates.twoIsOn)
            DisclosureGroup("Sub-items") {
                Text("Sub-item 1")
            }
        }
    }
}

struct DisclosureGroupExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupExamplePage()
    }
}
