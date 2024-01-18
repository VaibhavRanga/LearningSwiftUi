//
//  LearningSwiftUiApp.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 18/01/24.
//

import SwiftUI

struct ButtonsModule: View {
    
    @State var myColor: Color = Color.black
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .foregroundStyle(myColor)
            Button("Click me") {
                myColor = Color.blue
            }
            
            Button {
                myColor = Color.green
            } label: {
                ZStack {
                    Rectangle()
                        .frame(width: 200, height: 50)
                        .cornerRadius(20)
                        .foregroundStyle(.green)
                    Text("Click the button")
                        .foregroundStyle(.white)
                }
            }
            
            Button {
                myColor = Color.red
            } label: {
                Image(systemName: "heart.circle")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .contentShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.red)
            }
            .padding()
        }
    }
}

#Preview {
    ButtonsModule()
}
