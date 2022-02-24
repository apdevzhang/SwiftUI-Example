//
//  SwiftUIExampleApp.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/22.
//

import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            print("didFinishLaunching")
        return true
    }
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
            print("didReceiveMemoryWarning")
    }
}

@main
struct SwiftUIExampleApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase) { newValue in
            switch newValue {
                case .active:
                    print("active")
                case .inactive:
                    print("inactive")
                case .background:
                    print("background")
                @unknown default:
                    print("default")
            }
        }
    }
}
