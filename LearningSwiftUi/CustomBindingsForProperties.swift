//
//  CustomBindingsForProperties.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 30/06/24.
//

import SwiftUI

//struct CustomBindingsForProperties: View {
//    @State private var username = ""
//    
//    var body: some View {
//        let binding = Binding(
//            get: { self.username },
//            set: { self.username = $0 }
//        )
//        
//        return VStack {
//            TextField("Enter your name", text: binding)
//        }
//    }
//}

struct CustomBindingsForProperties: View {
    @State private var firstToggle = false
    @State private var secondToggle = false

    var body: some View {
        let firstBinding = Binding(
            get: { self.firstToggle },
            set: {
                self.firstToggle = $0

                if $0 == true {
                    self.secondToggle = false
                }
            }
        )

        let secondBinding = Binding(
            get: { self.secondToggle },
            set: {
                self.secondToggle = $0

                if $0 == true {
                    self.firstToggle = false
                }
            }
        )

        return VStack {
            Toggle(isOn: firstBinding) {
                Text("First toggle")
            }

            Toggle(isOn: secondBinding) {
                Text("Second toggle")
            }
        }
    }
}

#Preview {
    CustomBindingsForProperties()
}
