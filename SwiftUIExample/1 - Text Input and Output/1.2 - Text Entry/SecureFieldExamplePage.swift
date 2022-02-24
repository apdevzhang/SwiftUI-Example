//
//  SecureFieldExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct SecureFieldExamplePage: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        TextField(
            "User name (email address)",
            text: $username)
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .border(Color(UIColor.separator))
        SecureField(
            "Password",
            text: $password
        ) 
        .border(Color(UIColor.separator))
    }
}

struct SecureFieldExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldExamplePage()
    }
}
