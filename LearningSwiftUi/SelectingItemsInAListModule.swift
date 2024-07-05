//
//  SelectingItemsInAList.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 05/07/24.
//

import SwiftUI

struct SelectingItemsInAListModule: View {
    
    let names = ["Name1", "Name2", "Name3", "Name4"]
    
    
    
    
    //selecting single item
    
//    @State private var selection: String?
//    
//    var body: some View {
//        List(names, id: \.self, selection: $selection) { name in
//            Text(name)
//        }
//
//        if let selection {
//            Text("You selected: \(selection)")
//        }
//    }
    
    
    
    
    //selecting multiple items
    
    @State private var selection = Set<String>()
    
    var body: some View {
        List(names, id: \.self, selection: $selection) { name in
            Text(name)
        }
            
        if !selection.isEmpty {
            Text("You selected: \(selection.formatted())")
        }
    }
}

#Preview {
    SelectingItemsInAListModule()
}
