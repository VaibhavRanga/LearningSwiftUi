//
//  AlertModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 27/03/24.
//

import SwiftUI

struct AlertModule: View {
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            Button("Display alert") {
                showAlert = true
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
    }
}

#Preview {
    AlertModule()
}
