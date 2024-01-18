//
//  LearningSwiftUiApp.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 18/01/24.
//

import SwiftUI

struct UberEats: View {
    var body: some View {
        
        let foodImages: [String] = [
            "food-image",
            "food-image1",
            "food-image",
            "food-image1",
            "food-image",
            "food-image1",
            "food-image",
            "food-image1"
        ]
        
        VStack {
            Text("Featured on Uber Eats")
                .font(.title2)
                .fontWeight(.bold)
            
            ScrollView(showsIndicators: false) {
               
                VStack() {
                    ForEach(foodImages, id: \.self) { foodImage in
                        VStack(alignment: .leading) {
                            Image(foodImage)
                                .resizable()
                                .frame(width: 350, height: 170)
                                .cornerRadius(10)
                            Text("Dish name")
                            HStack {
                                Text("$ 12")
                                    .font(.subheadline)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                Text("Delivery time: 15 to 30 minutes")
                                    .font(.subheadline)
                                    .foregroundStyle(.gray)
                            }
                        }
                        .padding(.bottom)
                    }
                }
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    UberEats()
}
