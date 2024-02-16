//
//  GradientsModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 16/02/24.
//

import SwiftUI

struct GradientsModule: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                
                LinearGradient(               //Linear gradient
                    colors: [.red, .blue],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                
//                RadialGradient(               //Radial gradient
//                    colors: [.red, .blue],
//                    center: .leading,
//                    startRadius: 5,
//                    endRadius: 200
//                )
                
//                AngularGradient.init(           //Angular gradient
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    center: .center,
//                    angle: .degrees(220)
//                )
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsModule()
}
