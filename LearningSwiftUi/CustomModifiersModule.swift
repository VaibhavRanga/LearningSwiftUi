//
//  ModifiersModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 01/04/24.
//

import SwiftUI

struct Title: ViewModifier {                                    //2
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {                                                //3
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct Watermark: ViewModifier {                                //4
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {                                                //4
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct CustomModifiersModule: View {
    var body: some View {
        
        //1: Environment modifier
//        VStack {
//            Text("Hello, World!")
//                .font(.largeTitle)      //This overrides the title font given by the environment modifier
//            Text("Hello, World!")
//            Text("Hello, World!")
//                .blur(radius: 0)        //This won't override the blur modifier
//            Text("Hello, World!")
//        }
//        .font(.title)                   //Environment modifier
//        .blur(radius: 3)                //Not an environment modifier
        
        
        
//        Text("Hello world!")
//            .modifier(Title())                      //2
//            .titleStyle()                           //3
        
        
        
        Color.blue
            .frame(width: 300, height: 200)
//            .watermarked(with: "Hacking with Swift")          //4
    }
}

#Preview {
    CustomModifiersModule()
}
