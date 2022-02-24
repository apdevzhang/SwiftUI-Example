//
//  TextFieldExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/22.
//
//  https://developer.apple.com/documentation/swiftui/textfield
//  https://developer.apple.com/documentation/swiftui/text-input-and-output

import SwiftUI

struct TextFieldExamplePage: View {
    
    @State private var userName: String = ""
    
    // SwiftUI 提供了一个新的FocusState属性包装器，适用于所有 Apple 平台，并允许我们专注于特定视图或检查该视图是否已经获得焦点
    // https://blog.zhheo.com/p/f71be0a4.html
    @FocusState private var emailFieldIsFocused: Bool
    
    var body: some View {
        TextField("user name(emial address)", text: $userName)
            .focused($emailFieldIsFocused)
            .onSubmit {
                print("输入的用户名为: \(userName)")
            }
            // 首字母属性
            // UITextAutocapitalizationTypeNone, 不自动大写
            // UITextAutocapitalizationTypeWords, 单词首字母大写
            // UITextAutocapitalizationTypeSentences, 句子的首字母大写
            // UITextAutocapitalizationTypeAllCharacters, 所有字母都大写
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .border(.orange)
        
        Text("username: \(userName)")
            .foregroundColor(emailFieldIsFocused ? .red : .blue)
    }
    
}

struct TextFieldExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExamplePage()
    }
}
