//
//  FormExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/23.
//

import SwiftUI

struct FormExamplePage: View {
    
    enum NotifyMeAboutType {
        case directMessages
        case mentions
        case anything
    }
    
    enum ProfileImageSize {
        case large
        case medium
        case small
    }
    
    @State private var notifyMeAbout: NotifyMeAboutType = .directMessages
    @State private var profileImageSize: ProfileImageSize = .medium
    @State private var playNotificationSounds: Bool = true
    @State private var sendReadReceipts: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Notifications")) {
                    Picker("Notify Me About", selection: $notifyMeAbout) {
                        Text("Direct Messages").tag(NotifyMeAboutType.directMessages)
                        Text("Mentions").tag(NotifyMeAboutType.mentions)
                        Text("Anything").tag(NotifyMeAboutType.anything)
                    }
                    Toggle("Play notification sounds", isOn: $playNotificationSounds)
                    Toggle("Send read receipts", isOn: $sendReadReceipts)
                }
                Section(header: Text("User Profiles")) {
                    Picker("Profile Image Size", selection: $profileImageSize) {
                        Text("Large").tag(ProfileImageSize.large)
                        Text("Medium").tag(ProfileImageSize.medium)
                        Text("Small").tag(ProfileImageSize.small)
                    }
                    Button("Clear Image Cache") {}
                }
            }
            #if os(macOS)
            .padding()
            .frame(maxWidth: 500)
            #endif
        }
    }
}

struct FormExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        FormExamplePage()
    }
}
