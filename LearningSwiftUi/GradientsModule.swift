//
//  GradientsModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 16/02/24.
//

import SwiftUI

struct GradientsModule: View {
    var body: some View {
//        LinearGradient(colors: [.red, .blue], startPoint: .top, endPoint: .bottom)
        
//        LinearGradient(stops: [
//            Gradient.Stop(color: .red, location: 0.45),
//            Gradient.Stop(color: .blue, location: 0.55)
//        ], startPoint: .top, endPoint: .bottom)
        
//        RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
        
//        AngularGradient(colors: [.red, .green, .blue, .yellow, .red], center: .center)
        
        Text("Your content")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundStyle(.white)
            .background(.red.gradient)
    }
}

#Preview {
    GradientsModule()
}
