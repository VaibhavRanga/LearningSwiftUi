//
//  ContextMenuModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 05/07/24.
//

import SwiftUI

struct ContextMenuModule: View {
    
    @State private var backgroundColor = Color.red
    
    var body: some View {
        VStack {
            Text("Hello World!")
                .padding()
                .background(backgroundColor)
            
            Text("Change Color")
                .padding()
                .contextMenu {
                    Button("Red", image: ._2, role: .destructive) {
                        backgroundColor = .red
                    }
                    
                    Button("Green", systemImage: "checkmark.circle") {
                        backgroundColor = .green
                    }
                    
                    Button("Blue") {
                        backgroundColor = .blue
                    }
                }
        }
    }
}

#Preview {
    ContextMenuModule()
}
