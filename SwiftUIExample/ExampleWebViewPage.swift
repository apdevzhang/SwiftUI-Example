//
//  ExampleWebViewPage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI
import WebKit

struct ExampleWebViewPage: UIViewRepresentable {
    
    var urlString: String = ""
    var title: String = ""
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: URL(string: urlString)!)
        webView.load(request)
    }
    
}

struct ExampleWebViewPage_Previews: PreviewProvider {
    static var previews: some View {
        ExampleWebViewPage()
    }
}
