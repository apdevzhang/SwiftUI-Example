//
//  GroupBoxExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct GroupBoxExamplePage: View {
    
    @State private var userAgreed: Bool = false
    
    var body: some View {
        GroupBox(label:
            Label("End-User Agreement", systemImage: "building.columns")
        ) {
            ScrollView(.vertical, showsIndicators: true) {
                Text("Use a group box when you want to visually distinguish a portion of your user interface with an optional title for the boxed content./r The following example sets up a GroupBox with the label “End-User Agreement”, and a long agreementText string in a Text view wrapped by a ScrollView. The box also contains a Toggle for the user to interact with after reading the text.")
                    .font(.footnote)
            }
            .frame(height: 100)
            Toggle(isOn: $userAgreed) {
                Text("I agree to the above terms")
            }
        }
    }
}

struct GroupBoxExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxExamplePage()
    }
}
