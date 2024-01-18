//
//  LearningSwiftUiApp.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 18/01/24.
//

import SwiftUI

struct PaddingModule: View {
    var body: some View {
        VStack {
            Text("Hello, how are you doing today?")
                .padding()
                .background(.blue)
                .padding()
                .background(.green)
            Text("padding")
                .padding(.horizontal, 32)
                .background(.yellow)
                .padding(.top, 16)
                .background(.pink)
        }
    }
}

#Preview {
    PaddingModule()
}
