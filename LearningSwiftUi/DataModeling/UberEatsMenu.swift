//
//  DataModelingModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 19/01/24.
//

import SwiftUI

struct UberEatsMenu: View {
    
    let menuItems: [MenuItem] = [
        MenuItem(imageName: "steak", type: "American", restaurantName: "Ruth's Chris"),
        MenuItem(imageName: "pizza", type: "Italian", restaurantName: "Domino's"),
        MenuItem(imageName: "japanese-tapas", type: "Japanese", restaurantName: "Shoto"),
        MenuItem(imageName: "burger", type: "American", restaurantName: "Shake Shack"),
        MenuItem(imageName: "sushi", type: "Japanese", restaurantName: "Nobu")
    ]
    
    var body: some View {
        
        VStack {
            Text("Featured on Uber Eats")
                .font(.title2)
                .fontWeight(.bold)
            
            ScrollView(showsIndicators: false) {
               
                VStack(spacing: 24) {
                    ForEach(menuItems, id: \.id) { item in
                        MenuItemView(menuItem: item)
                    }
                }
            }
        }
    }
}

#Preview {
    UberEatsMenu()
}
