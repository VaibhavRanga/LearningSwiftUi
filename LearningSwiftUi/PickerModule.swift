//
//  PickerModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 21/03/24.
//

import SwiftUI

struct PickerModule: View {
    let names = ["Vaibhav", "Karuna", "Dinesh"]
    @State private var selectedName = "Vaibhav"
    @State private var date = Date.now
    
    var body: some View {
        Form {
            Picker("Select a name", selection: $selectedName) {
                ForEach(names, id: \.self) {
                    Text($0)
                }
            }
            
            Text("Name selected: \(selectedName)")
            
            DatePicker("Please enter a date", selection: $date, in: Date.now..., displayedComponents: .hourAndMinute)
                .labelsHidden()
        }
    }
}

#Preview {
    PickerModule()
}
