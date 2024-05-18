//
//  AnimationsModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 16/05/24.
//

import SwiftUI

struct AnimationsModule: View {
    var body: some View {
        CustomTransitionsUsingViewModifiers()
    }
}

struct ScaleEffectAndBlurAnimations: View {
    @State private var scaleEffectAndBlurAnimation = 1.0
    
    var body: some View {
        Button("Tap me") {
            scaleEffectAndBlurAnimation += 1
        }
        .padding(50)
        .foregroundStyle(.white)
        .background(.red)
        .clipShape(.circle)
        .scaleEffect(scaleEffectAndBlurAnimation)
        .blur(radius: (scaleEffectAndBlurAnimation - 1) * 3)
        .animation(.default, value: scaleEffectAndBlurAnimation)
    }
}

struct SpringEaseInOut: View {
    @State private var variable = 1.0
    
    var body: some View {
        Text("Some text")
            .onTapGesture {
                variable += 1
            }
            .scaleEffect(variable)
        
            .animation(.spring(duration: 1, bounce: 0.8), value: variable)
            
//            .animation(
//                .easeInOut(duration: 2)
//                .delay(1),
//                value: variable
//             )
        
//            .animation(.easeInOut(duration: 2).repeatCount(3, autoreverses: true), value: variable)
    }
}

struct Overlay: View {
    @State private var variable = 1.0
    
    var body: some View {
        Button("Tap me") {
//            variable += 1
        }
        .padding(50)
        .foregroundStyle(.white)
        .background(.red)
        .clipShape(.circle)
        .overlay {
            Circle()
                .stroke(.red)
                .scaleEffect(variable)
                .opacity(2 - variable)
                .animation(.easeOut(duration: 1).repeatForever(autoreverses: false), value: variable)
        }
        .onAppear {
            variable = 2
        }
    }
}

struct AnimatingBinding: View {
    @State private var animationValue1 = 1.0
    @State private var animationValue2 = 1.0
    
    var body: some View {
        VStack {
            Text("Hello")
                .padding(50)
                .foregroundStyle(.white)
                .background(.red)
                .clipShape(.circle)
                .scaleEffect(animationValue1)
                .animation(.easeInOut(duration: 1).repeatCount(1, autoreverses: true), value: animationValue1)
            
            Stepper("\(animationValue1)", value: $animationValue1.animation(), in: 1...10)
            
            Spacer()
            
            Text("Hello")
                .padding(50)
                .foregroundStyle(.white)
                .background(.red)
                .clipShape(.circle)
                .scaleEffect(animationValue2)
                .animation(.easeInOut(duration: 1).repeatCount(1, autoreverses: true), value: animationValue2)
            
            Stepper("\(animationValue2)", value: $animationValue2.animation(), in: 1...10)
        }
    }
}

struct ExplicitAnimation: View {
    @State private var animationValue = 0.0
    
    var body: some View {
        Button("Tap me") {
            withAnimation(.spring(duration: 1, bounce: 0.6)) {
                animationValue += 360
            }
        }
        .padding(50)
        .foregroundStyle(.white)
        .background(.red)
        .clipShape(.circle)
        .rotation3DEffect(.degrees(animationValue), axis: (x: 0.0, y: 1.0, z: 0.0))
    }
}

struct ControllingAnimationStack: View {
    @State private var animationEnabled = true
    
    var body: some View {
        VStack {
            Button("Tap me") {
                animationEnabled.toggle()
            }
            .frame(width: 200, height: 200)
            .foregroundStyle(.white)
            .background(animationEnabled ? .blue : .red)
            .animation(.default, value: animationEnabled)
            .clipShape(.rect(cornerRadius: animationEnabled ? 60 : 0))
            .animation(.spring(duration: 1, bounce: 0.6), value: animationEnabled)
        }
    }
}

struct AnimatingGestures: View {
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(.rect(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged { drag in
                        dragAmount = drag.translation
                    }
                    .onEnded { drag in
                        withAnimation(.bouncy) {
                            dragAmount = .zero
                        }
                    }
            )
        
//            .gesture(
//                DragGesture()
//                    .onChanged { drag in
//                        dragAmount = drag.translation
//                    }
//                    .onEnded { drag in
//                        dragAmount = .zero
//                    }
//            )
//            .animation(.bouncy, value: dragAmount)
    }
}

struct TrailingCharacters: View {
    let letters = Array("Hello SwiftUI")
    
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) { num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.linear.delay(Double(num) / 20), value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged { drag in
                    dragAmount = drag.translation
                }
                .onEnded { drag in
                    enabled.toggle()
                    dragAmount = .zero
                }
        )
    }
}

struct ShowingAndHidingViewsWithAnimation: View {
    @State private var isShowingView = false
    
    var body: some View {
        VStack {
            Button("Tap me") {
                withAnimation {
                    isShowingView.toggle()
                }
            }
            
            if isShowingView {
                Rectangle()
                    .frame(width: 200, height: 200)
                    .foregroundStyle(.red)
//                    .transition(.scale)
                
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}


struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(
            active: CornerRotateModifier(amount: -90, anchor: .topLeading),
            identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
        )
    }
}

struct CustomTransitionsUsingViewModifiers: View {
    @State private var isShowingRed = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 200)
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
        .onTapGesture {
            withAnimation {
                isShowingRed.toggle()
            }
        }
    }
}

#Preview {
    AnimationsModule()
}
