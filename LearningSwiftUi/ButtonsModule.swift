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
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .foregroundStyle(myColor)
            Button("Click me") {
                myColor = Color.blue
            }
            
            Button(action: {
                myColor = .green
            }, label: {
                Text("Click me")
                    .frame(width: 150, height: 36)
                    .background(.green)
                    .foregroundStyle(.white)
                    .cornerRadius(20)
            })
            
            Button {
                myColor = Color.red
            } label: {
                Image(systemName: "heart.circle")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.red)
            }
            .padding()
        }
    }
}

#Preview {
    ButtonsModule()
}
