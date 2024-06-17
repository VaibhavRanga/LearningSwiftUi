//
//  ContentUnavailableModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 17/06/24.
//

import SwiftUI

struct ContentUnavailableModule: View {
    var body: some View {
        
        
//        ContentUnavailableView("Not available", systemImage: "swift", description: Text("Sorry, no content found"))
        
        
        
        
        ContentUnavailableView {
            Label("Not available", systemImage: "swift")
        } description: {
            Text("Sorry, no content found")
        } actions: {
            Button("Add content", systemImage: "plus") {
                
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentUnavailableModule()
}
