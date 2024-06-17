//
//  SheetModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 21/05/24.
//

import StoreKit
import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    var name: String
    
    var body: some View {
        Text("Hello \(name)")
        Button("Dismiss Sheet") {
            dismiss()
        }
    }
}

struct SheetAndReviewModule: View {
    
    @Environment(\.requestReview) var requestReview
    
    @State private var showingSheet = false
    
    var body: some View {
        
        Button("Leave a review on the app store") {
            requestReview()
        }
        
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Vaibhav")
        }
    }
}

#Preview {
    SheetAndReviewModule()
}
