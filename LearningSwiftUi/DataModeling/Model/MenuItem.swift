//
//  MenuItem.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 19/01/24.
//

import Foundation

struct MenuItem: Identifiable {
    var id = NSUUID().uuidString
    
    let imageName: String
    let type: String
    let restaurantName: String
}
