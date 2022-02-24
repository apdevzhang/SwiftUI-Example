//
//  PickerExamplePage.swift
//  SwiftUIExample
//
//  Created by BANYAN on 2022/2/22.
//

import SwiftUI

enum Flavor: String, CaseIterable, Identifiable {
    case chocolate, vanilla, strawberry
    var id: Self { self }
}

enum Topping: String, CaseIterable, Identifiable {
    case nuts, cookies, blueberries
    var id: Self { self }
}

extension Flavor {
    var suggestedTopping: Topping {
        switch self {
        case .chocolate: return .nuts
        case .vanilla: return .cookies
        case .strawberry: return .blueberries
        }
    }
}

struct PickerExamplePage: View {
    
    // eg.1
    @State private var selectedFlavor: Flavor = .chocolate
    
    // eg.2
    @State private var suggestedTopping: Topping = .nuts
    
    // eg.3
    @State private var selectedTopping: Topping = .nuts
    
    var body: some View {
        List {
            Picker("Flavor", selection: $selectedFlavor) {
                Text("Chocolate").tag(Flavor.chocolate)
                Text("Vanilla").tag(Flavor.vanilla)
                Text("Strawberry").tag(Flavor.strawberry)
            }
        }
        
        Picker("Flavor", selection: $selectedFlavor) {
            ForEach(Flavor.allCases) { flavor in
                Text(flavor.rawValue.capitalized)
            }
        }
        
        Divider()
        
        List {
            Picker("Flavor", selection: $suggestedTopping) {
                ForEach(Flavor.allCases) { flavor in
                    Text(flavor.rawValue.capitalized)
                        .tag(flavor.suggestedTopping)
                }
            }
            HStack {
                Text("Suggested Topping")
                Spacer()
                Text(suggestedTopping.rawValue.capitalized)
                    .foregroundStyle(.secondary)
            }
        }
        
        VStack {
            Picker("Flavor", selection: $selectedFlavor) {
                ForEach(Flavor.allCases) { flavor in
                    Text(flavor.rawValue.capitalized)
                }
            }
            Picker("Topping", selection: $selectedTopping) {
                ForEach(Topping.allCases) { topping in
                    Text(topping.rawValue.capitalized)
                }
            }
        }
        .pickerStyle(.segmented)
    }
    
}

struct PickerExamplePage_Previews: PreviewProvider {
    static var previews: some View {
        PickerExamplePage()
    }
}
