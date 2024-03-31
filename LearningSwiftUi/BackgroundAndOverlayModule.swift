//
//  BackgroundAndOverlayModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 17/02/24.
//

import SwiftUI

struct BackgroundAndOverlayModule: View {
    var body: some View {
        
        //Background
        
//        Text("Hello world!")
//            .background(
////                LinearGradient(
////                    gradient: Gradient(
////                        colors: [Color.red, Color.blue]
////                    ),
////                    startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
////                    endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/
////                )
//                Circle()
//                    .fill(
//                        LinearGradient(
//                            gradient: Gradient(colors: [Color.red, Color.blue]),
//                            startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
//                            endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/
//                        )
//                    )
//                    .frame(width: 100, height: 100)
//            )
//            .background(
//                Circle()
//                    .fill(
//                        LinearGradient(
//                            gradient: Gradient(colors: [Color.blue, Color.red]),
//                            startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
//                            endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/
//                        )
//                    )
//                    .frame(width: 120, height: 120)
//            )
        
        
        //Overlay
        
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundStyle(Color.white)
//            )
//            .frame(width: 120, height: 120)
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 120, height: 120)
//            )
        
        
        let shadowColor = Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(.white)
            .frame(width: 100, height: 100)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.red, Color.blue]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .shadow(color: shadowColor, radius: 7, y: 5)
            )
            .overlay(alignment: .bottomTrailing) {
                Circle()
                    .fill(.red)
                    .frame(width: 30, height: 30)
                    .overlay(alignment: .center) {
                        Text("5")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                    }
                    .background(
                        Circle()
                            .fill(.white)
                            .frame(width: 35, height: 35)
                    )
            }
    }
}

#Preview {
    BackgroundAndOverlayModule()
}
