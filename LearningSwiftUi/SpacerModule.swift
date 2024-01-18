//
//  LearningSwiftUiApp.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 18/01/24.
//

import SwiftUI

struct SpacerModule: View {
    var body: some View {
//        VStack {
//            Text("Heading")
//            Spacer()
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                .background(.red)
//            Text("Bottom")
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
                
                Spacer()
                
                Image(systemName: "paperplane.circle")
            }
            
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
                
                Spacer()
                
                Image(systemName: "paperplane.circle")
            }
            Divider()
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SpacerModule()
}
