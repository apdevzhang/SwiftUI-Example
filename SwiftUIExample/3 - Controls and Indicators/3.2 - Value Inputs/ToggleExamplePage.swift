//
//  ToggleExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/22.
//

import SwiftUI

struct ToggleExamplePage: View {
    
    @State private var vibrateOnRing = false
    @State private var vibrateOnSilent = false
    
    
    var body: some View {
        Toggle(isOn: $vibrateOnRing) {
            Text("Vibrate on Ring")
        }
        
        Toggle("Vibrate on Ring", isOn: $vibrateOnRing)
        
        VStack {
            Toggle("Vibrate on Ring", isOn: $vibrateOnRing)
            Toggle("Vibrate on Silent", isOn: $vibrateOnSilent)
        }
        .toggleStyle(.switch)
    }
    
}

struct ToggleExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        ToggleExamplePage()
    }
}
