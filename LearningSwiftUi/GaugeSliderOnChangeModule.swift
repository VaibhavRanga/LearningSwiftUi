//
//  GaugeSliderOnChangeModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 14/06/24.
//

import SwiftUI

struct GaugeSliderOnChangeModule: View {
    @State private var value = 0.0 {
        didSet {
            print("New value is: \(value)")
        }
    }
    
    var body: some View {
        VStack {
            Text("Hello world")
                .blur(radius: value)
            
            Gauge(value: value, in: 0.0...20.0) {
                Text("\(value)")
            }
            Slider(value: $value, in: 0.0 ... 20.0)
                .onChange(of: value) { oldValue, newValue in
                    print("Old value was: \(oldValue) and new value is: \(newValue)")
                }
            
            Button("Random value") {
                value = Double.random(in: 0.0 ... 20.0)
            }
        }
    }
}

#Preview {
    GaugeSliderOnChangeModule()
}
