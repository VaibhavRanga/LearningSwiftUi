//
//  CustomViewsModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 01/04/24.
//

import SwiftUI

struct CapsuleText: View {                                  //4
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct CustomViewsModule: View {
    var motto1: some View {                 //1
        Text("Motto 1")
    }
    var motto2 = Text("Motto 2")            //1
    
    var spells1: some View {                 //2
        VStack {
            Text("Text 1")
            Text("Text 2")
        }
    }
    
    var spells2: some View {                 //2
        Group {
            Text("Text 1")
            Text("Text 2")
        }
    }
    
    @ViewBuilder var spells3: some View {                   //3 : Similar to body property
        Text("Some text")
        Text("Some other text")
    }
    
    var body: some View {
//        VStack {                                          //1
//            motto1
//                .foregroundStyle(.red)
//            motto2
//                .foregroundStyle(.blue)
//        }
        
        
//        VStack {                                            //2
//            spells2
//        }
//        
//        HStack {                                            //2
//            spells2
//        }
        
        
//        VStack {                                              //3
//            spells3
//        }
        
        
        CapsuleText(text: "Some text")                              //4
            .foregroundStyle(.white)
        CapsuleText(text: "Some other text")                        //4
            .foregroundStyle(.yellow)
    }
}

#Preview {
    CustomViewsModule()
}
