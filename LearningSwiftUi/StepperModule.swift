//
//  Stepper.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 12/04/24.
//

import SwiftUI

struct StepperModule: View {
    @State private var sleepAmount = 8.0
    
    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
    }
}

#Preview {
    StepperModule()
}
