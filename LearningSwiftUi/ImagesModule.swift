//
//  LearningSwiftUiApp.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 18/01/24.
//

import SwiftUI

struct ImagesModule: View {
    var body: some View {
        //        Image(systemName: "globe")
        //            .resizable()
        //            .imageScale(.large)
        //            .foregroundStyle(.blue)
        ////            .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        //            .scaledToFit()
        
        Image("person_image")
            .interpolation(.none)
            .resizable()
            .frame(width: 400, height: 400)
            .clipShape(Circle())
            .border(.blue, width: 5)
        
        Image(.leviSaunders71726)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.8
            }
    }
}

#Preview {
    ImagesModule()
}
