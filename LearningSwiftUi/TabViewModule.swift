//
//  TabViewModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 05/07/24.
//

import SwiftUI

struct TabViewModule: View {
    
    @State private var selectedTab = "Home"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Button("Go to Settings") {
                selectedTab = "Settings"
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            .tag("Home")
            
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag("Settings")
        }
    }
}

#Preview {
    TabViewModule()
}
