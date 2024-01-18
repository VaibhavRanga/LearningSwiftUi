//
//  LearningSwiftUiApp.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 18/01/24.
//

import SwiftUI

struct ScrollViewModule: View {
    var body: some View {
//        ScrollView(showsIndicators: false) {
//            VStack {
//                ForEach(0 ... 100, id: \.self) { index in
//                    Text("Hello, \(index)")
//                }
//            }
//        }
        
        
        
        //Horizontal scroll view
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0 ... 10, id: \.self) { index in
                    Image("person_image")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
            }
            Spacer()
        }
    }
}

#Preview {
    ScrollViewModule()
}
