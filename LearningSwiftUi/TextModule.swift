//
//  LearningSwiftUiApp.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 18/01/24.
//

import SwiftUI

struct TextModule: View {
    var body: some View {
        Text("Hello, I am Vaibhav and currently I am learning iOS app development.")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.purple)
            .fontWeight(.heavy)
            .multilineTextAlignment(.center)
            .italic()
            .underline()
    }
}

#Preview {
    TextModule()
}
