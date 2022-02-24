//
//  ButtonExamplePage.swift
//  Demo
//
//  Created by BANYAN on 2022/2/22.
//
//  https://developer.apple.com/documentation/swiftui/button

import SwiftUI

// contextMenu funcs
func selectHearts() {}
func selectClubs() {}
func selectSpades() {}
func selectDiamonds() {}

struct ButtonExamplePage: View {
    
    private var shouldShowMenu = true
    
    let menuItems = ContextMenu {
        Button("♥️ - Hearts", action: selectHearts)
        Button("♣️ - Clubs", action: selectClubs)
        Button("♠️ - Spades", action: selectSpades)
        Button("♦️ - Diamonds", action: selectDiamonds)
    }
    
    var body: some View {
        
        // eg.1
        Button {
            print("点击按钮")
        } label: {
            Text("按钮")
        }
        
        Divider()
        
        // eg.2
        Button("登录") {
            print("点击登录")
        }
        
        Divider()
        
        // eg.3
        Button {
            addFolder()
        } label: {
            Label("Add Folder", systemImage: "folder.badge.plus")
        }
                
        Divider()
        
        // eg.4 contextMenu
        VStack {
            Text("Favarite Card Suit(长按触发)")
                .padding()
                .contextMenu(shouldShowMenu ? menuItems : nil)
        }
        
        // eg.5
        HStack {
            Button("登录") {
                print("登录...")
            }
            Button("注册") {
                print("注册...")
            }
        }
        .buttonStyle(.bordered)
        .foregroundColor(.orange)
        
    }
    
    // MARK: func
    func addFolder() {
        print("add folder")
    }

}

struct ButtonExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExamplePage()
    }
}
