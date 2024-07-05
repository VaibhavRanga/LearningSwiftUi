//
//  CustomRowSwipeActionsModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 05/07/24.
//

import SwiftUI

struct CustomRowSwipeActionsModule: View {
    var body: some View {
        List {
            Text("Hello World!")
                .swipeActions {
                    Button("Delete", systemImage: "minus.circle", role: .destructive) {
                        print("Deleting")
                    }
                }
                .swipeActions {
                    Button("Pin", systemImage: "pin") {
                        print("Pinning")
                    }
                    .tint(.orange)
                }
                .swipeActions(edge: .leading) {
                    Button("Save", systemImage: "plus") {
                        print("Saving")
                    }
                    .tint(.green)
                }
        }
    }
}

#Preview {
    CustomRowSwipeActionsModule()
}
