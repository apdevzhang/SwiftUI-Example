//
//  EditButtonExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/22.
//
//  https://developer.apple.com/documentation/swiftui/editbutton

import SwiftUI

struct EditButtonExamplePage: View {
    
    @State private var fruits = [
        "Apple",
        "Banana",
        "Papaya",
        "Mango"
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits, id: \.self) { fruits in
                    Text(fruits)
                }
                .onDelete {
                    fruits.remove(atOffsets: $0)
                }
                .onMove {
                    fruits.move(fromOffsets: $0, toOffset: $1)
                }
            }
        }
        .navigationTitle("Fruits")
        .toolbar {
            EditButton()
        }
    }
}

struct EditButtonExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonExamplePage()
    }
}
