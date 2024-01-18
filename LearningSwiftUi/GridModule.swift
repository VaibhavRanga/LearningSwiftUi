//
//  LearningSwiftUiApp.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 18/01/24.
//

import SwiftUI

struct GridModule: View {
    var body: some View {
        
        
        let columns: [GridItem] = [
            .init(.flexible(), spacing: 2),
            .init(.flexible(), spacing: 2),
            .init(.flexible())
        ]
        
        let dimension = UIScreen.main.bounds.width / 3 - 4
        
        let images: [String] = [
            "2",
            "3",
            "4",
            "food-image",
            "food-image1",
            "5",
            "6",
            "person_image"
        ]
        
        ScrollView {
            LazyVGrid(columns: columns, spacing: 2) {
                ForEach(images, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .frame(height: dimension)
                }
            }
            .padding(2)
        }
    }
}

#Preview {
    GridModule()
}
