//
//  NavigationBarAndToolbarModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 30/05/24.
//

import SwiftUI

struct NavigationBarAndToolbarModule: View {
    @State private var title = "SwiftUI"
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<100) { item in
                    Text("Row \(item)")
                }
            }
            .navigationTitle($title)
//            .navigationBarTitleDisplayMode(.inline)
            
//            .toolbarBackground(.blue)
            
//            .toolbarColorScheme(.dark)
            
//            .toolbar(.hidden, for: .navigationBar)
            
            .toolbar {
//                ToolbarItemGroup(placement: .topBarLeading) {
                    Button("Tap Me") {
                        //button action code
                    }
                    
                    Button("Or Tap Me") {
                        //button action code
                    }
                
                    Button("Maybe tap me") {
                        //button action code
                    }
//                }
            }
        }
    }
}

#Preview {
    NavigationBarAndToolbarModule()
}
