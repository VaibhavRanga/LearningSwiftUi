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
            .font(.title2)
//            .font(.system(size: 20, weight: .semibold))
            .foregroundStyle(.green)
            .fontWeight(.heavy)
//            .baselineOffset(-50)      //linespacing above
//            .baselineOffset(30)       //linespacing below
//            .kerning(10)              //character spacing
            .multilineTextAlignment(.center)
            .italic()
            .underline()
            .strikethrough(color: .red)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextModule()
}
