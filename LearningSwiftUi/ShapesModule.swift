//
//  LearningSwiftUiApp.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 18/01/24.
//

import SwiftUI

struct ShapesModule: View {
    var body: some View {
        Circle()
//        Ellipse()
//        Capsule(style: .continuous)
//        Rectangle()
//        RoundedRectangle(cornerRadius: 25.0)
//            .fill(.red)
//            .stroke(Color.red)
//            .stroke(Color.blue, lineWidth: 3)
//            .stroke(Color.blue, style: StrokeStyle(lineWidth: 50, lineCap: .butt, dash: [5, 50]))
//            .stroke(Color.blue, style: StrokeStyle(lineWidth: 5, lineCap: .butt, dash: [5, 10]))
//            .trim(from: 0.25, to: 1.0)
//            .stroke(Color.purple, lineWidth: 5)
            .frame(width: 200, height: 200)
    }
}

#Preview {
    ShapesModule()
}
