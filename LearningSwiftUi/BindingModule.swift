//
//  BindingModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 19/01/24.
//

import SwiftUI

struct BindingModule: View {
    
    @State var isOn: Bool = false
    @State var showBattery: Bool = false
    
    var body: some View {
        VStack {
            Text("Notifications: \(isOn ? "Enabled" : "Disabled")")
            if showBattery {
                Text("Battery: 100%")
            }
            
            SettingsRowView(imageName: "bell.circle.fill", title: "Notifications", isOn: $isOn)
            
            SettingsRowView(imageName: "battery.100percent.circle.fill", title: "ShowBattery", isOn: $showBattery)
        }
    }
}



struct SettingsRowView: View {
    
    let imageName: String
    let title: String
    
    @Binding var isOn: Bool
    
    var body: some View {
        Toggle(isOn: $isOn) {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(.blue)
                Text(title)
                    .font(.headline)
                    .fontWeight(.regular)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(Color(.systemGroupedBackground))
        .cornerRadius(10)
        .padding(.horizontal, 8)
    }
}

#Preview {
    BindingModule()
}
