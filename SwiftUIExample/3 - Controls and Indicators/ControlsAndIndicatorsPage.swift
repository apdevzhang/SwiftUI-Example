//
//  ControlsAndIndicatorsPage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/22.
//

import SwiftUI

struct ControlsAndIndicatorsPage: View {
    var body: some View {
        List {
            // MARK: 3.1 - Button
            Section(header: Text("3.1 - Button")) {
                NavigationLink(destination: ButtonExamplePage()) {
                    ExamplePageRow(title: "3.1.1 - Button", subtitle: "Button示例")
                }
                NavigationLink(destination: EditButtonExamplePage()) {
                    ExamplePageRow(title: "3.1.2 - EditButton", subtitle: "EditButton示例")
                }
                NavigationLink(destination: PasteButtonExamplePage()) {
                    ExamplePageRow(title: "3.1.3 - PasteButton", subtitle: "PasteButton示例")
                }
                NavigationLink(destination: LinkExamplePage()) {
                    ExamplePageRow(title: "3.1.4 - Link", subtitle: "Link示例")
                }
                NavigationLink(destination: MenuExamplePage()) {
                    ExamplePageRow(title: "3.1.5 - Menu", subtitle: "Menu示例")
                }
            }
            
            // MARK: 3.2 - Value Inputs
            Section(header: Text("3.2 - Value Inputs")) {
                NavigationLink(destination: SliderExamplePage()) {
                    ExamplePageRow(title: "3.2.1 - Slider", subtitle: "Slider示例")
                }
                NavigationLink(destination: StepperExamplePage()) {
                    ExamplePageRow(title: "3.2.2 - Stepper", subtitle: "Stepper示例")
                }
                NavigationLink(destination: ToggleExamplePage()) {
                    ExamplePageRow(title: "3.2.3 - Toggle", subtitle: "Toggle示例")
                }
            }
            
            // MARK: 3.3 - Pickers
            Section(header: Text("3.3 - Pickers")) {
                NavigationLink(destination: PickerExamplePage()) {
                    ExamplePageRow(title: "3.3.1 - Picker", subtitle: "Picker示例")
                }
                NavigationLink(destination: DatePickerExamplePage()) {
                    ExamplePageRow(title: "3.3.2 - DatePicker", subtitle: "DatePicker示例")
                }
                NavigationLink(destination: ColorPickerExamplePage()) {
                    ExamplePageRow(title: "3.3.3 - ColorPicker", subtitle: "ColorPicker示例")
                }
            }
            
            // MARK: 3.4 - Indicators
            Section(header: Text("3.4 - ProgressView")) {
                NavigationLink(destination: ProgressViewExamplePage()) {
                    ExamplePageRow(title: "3.4.1 - ProgressView", subtitle: "ProgressView示例")
                }
            }
            
            // MARK: 3.5 - Configuration
            Section(header: Text("3.5 - Configuration")) {
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/controlactivestate", title: "ControlActiveState")) {
                    ExamplePageRow(title: "3.5.1 - ControlActiveState", subtitle: "ControlActiveState示例")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/controlsize", title: "ControlSize")) {
                    ExamplePageRow(title: "3.5.2 - ControlSize", subtitle: "ControlSize示例")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/prominence", title: "Prominence")) {
                    ExamplePageRow(title: "3.5.3 - Prominence", subtitle: "Prominence示例")
                }
                NavigationLink(destination: ExampleWebViewPage(urlString: "https://developer.apple.com/documentation/swiftui/visibility",  title: "Visibility")) {
                    ExamplePageRow(title: "3.5.4 - Visibility", subtitle: "Visibility示例")
                }
            }
        }
        .listStyle(.grouped)
        .navigationBarTitle(Text("Controls and Indicators"), displayMode: .large)
    }
}

struct ControlsAndIndicatorsPage_Previews: PreviewProvider {
    static var previews: some View {
        ControlsAndIndicatorsPage()
    }
}
