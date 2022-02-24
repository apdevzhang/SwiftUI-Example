//
//  MenuExamplePage.swift
//  Demo
//
//  Created by BANYAN on 2022/2/22.
//
//  https://developer.apple.com/documentation/swiftui/menu

import SwiftUI

struct MenuExamplePage: View {
    
    // eg.1
    func duplicate() {}
    func rename() {}
    func delete() {}
    func copy() {}
    func copyFormatted() {}
    func copyPath() {}
    
    // eg.2
    func openInPreview() {}
    func saveAsPDF() {}
    
    // eg.3
    func addCurrentTabToReadingList() {
        print("addCurrentTabToReadingList")
    }
    func bookmarkAll() {
        print("bookmarkAll")
    }
    func show() {
        print("show")
    }
    func addBookmark() {
        print("addBookmark")
    }
    
    // eg.4
    func setInPoint() {}
    func setOutPoint() {}
    
    var body: some View {
        
        // eg.1
        Menu("Actions") {
            Button("Duplicate", action: duplicate)
            Button("Rename", action: rename)
            Button("Delete…", action: delete)
            Menu("Copy") {
                Button("Copy", action: copy)
                Button("Copy Formatted", action: copyFormatted)
                Button("Copy Library Path", action: copyPath)
            }
        }
        
        Divider()
        
        // eg.2
        Menu {
            Button("Open in Preview", action: openInPreview)
            Button("Save as PDF", action: saveAsPDF)
        } label: {
            Label("PDF", systemImage: "doc.fill")
        }
        
        Divider()
        
        // eg.3
        Menu {
            Button(action: addCurrentTabToReadingList) {
                Label("Add to Reading List", systemImage: "eyeglasses")
            }
            Button(action: bookmarkAll) {
                Label("Add Bookmarks for All Tabs", systemImage: "book")
            }
            Button(action: show) {
                Label("Show All Bookmarks", systemImage: "books.vertical")
            }
        } label: {
            Label("Add Bookmark", systemImage: "book")
        } primaryAction: {
            addBookmark()
        }
        
        Divider()
        
        // eg.4
        Menu("Editing") {
            Button("Set In Point", action: setInPoint)
            Button("Set Out Point", action: setOutPoint)
        }
        .menuStyle(.borderlessButton)
        
    }
}

struct MenuExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        MenuExamplePage()
    }
}
