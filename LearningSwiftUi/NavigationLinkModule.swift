//
//  NavigationLinkModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 24/05/24.
//

import SwiftUI

struct NavigationLinkModule: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Text("Some text")
                
                NavigationLink("Tap Me") {
                    Text("Voila! A new screen.")
                }
                
                NavigationLink {
                    Text("Another new screen")
                } label: {
                    VStack {
                        Text("Some text for a link")
                        Image(systemName: "face.smiling")
                    }
                }
                
                List {
                    ForEach(0..<50) { row in
                        NavigationLink("Row \(row)") {
                            Text("Detail of row \(row)")
                        }
                    }
                }

            }
            .navigationTitle("SwiftUi")
        }
    }
}

#Preview {
    NavigationLinkModule()
}
