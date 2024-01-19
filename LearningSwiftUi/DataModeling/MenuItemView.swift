//
//  MenuItemView.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 19/01/24.
//

import SwiftUI

struct MenuItemView: View {
    
    let menuItem: MenuItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(menuItem.imageName)
                .resizable()
                .frame(width: 360, height: 150)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text(menuItem.restaurantName)
                    .fontWeight(.semibold)
                Text(menuItem.type)
                    .foregroundStyle(.gray)
                Text("$0.99 Delivery Fee | 15 - 30 min")
                    .foregroundStyle(.gray)
            }
            .font(.subheadline)
        }
    }
}

#Preview {
    MenuItemView(menuItem: MenuItem(imageName: "sushi", type: "Japanese", restaurantName: "Nobu"))
}
