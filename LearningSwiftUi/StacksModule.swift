//
//  LearningSwiftUiApp.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 18/01/24.
//

import SwiftUI

struct StacksModule: View {
    var body: some View {
//        VStack(alignment: .leading, spacing: 32) {
//            Text("Hello, World!")
//            Text("I am Vaibhav")
//            
//            ZStack(alignment: .topTrailing) {
//                Rectangle()
//                    .frame(width: 160, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                    .cornerRadius(10)
//                    .foregroundStyle(.brown)
//                Rectangle()
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 40)
//                    .foregroundStyle(.pink)
//            }
//        }
        
        VStack(alignment: .leading) {
            HStack(spacing: 10) {
                Image("person_image")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading) {
                    Text("vaibhav_ranga_official")
                        .font(.subheadline)
                        .fontWeight(.medium)
                    Text("Vaibhav Ranga")
                        .font(.system(size: 16))
                }
            }
            .padding(.horizontal)
            Divider()
            HStack(spacing: 10) {
                Image("person_image")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading) {
                    Text("vaibhav_ranga_official")
                        .font(.subheadline)
                        .fontWeight(.medium)
                    Text("Vaibhav Ranga")
                        .font(.system(size: 16))
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    StacksModule()
}
