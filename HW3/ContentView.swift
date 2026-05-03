//
//  ContentView.swift
//  HW3
//
//  Created by 許哲浚 on 2026/4/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            Tab("Heroes", systemImage: "figure.archery") {
                HeroList()
            }
            Tab("Items", systemImage: "waterbottle") {
                ItemList()
            }
            Tab("BP Sim", systemImage: "backpack") {
                
            }
        }
    }
}

#Preview {
    ContentView()
}
