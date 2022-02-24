//
//  AsyncImageExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct AsyncImageExamplePage: View {
    
    private var imageURL: URL = URL(string: "https://imgtu.com/i/bp9H0g")!
    
    var body: some View {
        // AsyncImage
        AsyncImage(url: imageURL) { phase in
            switch phase {
            case .empty :
                ProgressView()
            case .success(let image) :
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.size.width, height: 260)
            case .failure:
                Image("avatar")
            @unknown default:
                // Since the AsyncImagePhase enum isn't frozen,
                // we need to add this currently unused fallback
                // to handle any new cases that might be added
                // in the future:
                EmptyView()
            }
        }
    }
    
}

struct AsyncImageExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageExamplePage()
    }
}
