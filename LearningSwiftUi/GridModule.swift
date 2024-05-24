//
//  LearningSwiftUiApp.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 18/01/24.
//

import SwiftUI

struct GridModule: View {
//    let layout = [
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80))
//    ]
    
    let layout = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) { item in
                    Text("Item \(item)")
                }
            }
        }
        
        
        
//        let columns: [GridItem] = [
//            .init(.flexible(), spacing: 2),
//            .init(.flexible(), spacing: 2),
//            .init(.flexible())
//        ]
//        
//        let dimension = UIScreen.main.bounds.width / 3 - 8
//        
//        let images: [String] = [
//            "2",
//            "3",
//            "4",
//            "food-image",
//            "food-image1",
//            "5",
//            "6",
//            "person_image"
//        ]
//        
//        ScrollView {
//            LazyVGrid(columns: columns, spacing: 2) {
//                ForEach(images, id: \.self) { item in
//                    Image(item)
//                        .resizable()
//                        .frame(height: dimension)
//                }
//            }
//            .padding(2)
//        }
    }
}

#Preview {
    GridModule()
}
