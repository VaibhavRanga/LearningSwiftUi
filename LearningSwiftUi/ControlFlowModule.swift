//
//  LearningSwiftUiApp.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 18/01/24.
//

import SwiftUI

struct ControlFlowModule: View {
    
    @State var isLiked: Bool = false
    @State var likes: Int = 500
    
    var body: some View {
        
        Button {
            isLiked.toggle()
            isLiked ? (likes += 1) : (likes -= 1)   //ternary operator
        } label: {
//            if isLiked {
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(isLiked ? Color.red : Color.black)
//            } else {
//                Image(systemName: "heart")
//                    .resizable()
//                    .frame(width: 100, height: 100)
//                    .foregroundStyle(.black)
//            }
        }
        Text("\(likes) likes")
    }
}

#Preview {
    ControlFlowModule()
}
