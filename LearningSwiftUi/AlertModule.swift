//
//  AlertModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 27/03/24.
//

import SwiftUI

struct AlertModule: View {
    @State private var showAlert = false
    @State private var showConfirmation = false
    
    var body: some View {
        VStack {
            Button("Display alert") {
                showAlert = true
            }
            Button("Display confirmation dialog") {
                showConfirmation = true
            }
        }
//        .alert("Important message", isPresented: $showAlert) {
//            Button("OK") {}
//        }
        
        .alert("Important message", isPresented: $showAlert) {
            Button("Delete", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Please read this")
        }
        .confirmationDialog("Some confirmation", isPresented: $showConfirmation) {
            Button("Confirm") {  }
        } message: {
            Text("This is a confirmation message")
        }
    }
}

#Preview {
    AlertModule()
}
