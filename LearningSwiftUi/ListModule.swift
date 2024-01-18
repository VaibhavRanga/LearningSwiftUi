//
//  LearningSwiftUiApp.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 18/01/24.
//

import SwiftUI

struct ListModule: View {
   
    @State var images: [String] = [
        "2",
        "3",
        "4",
        "food-image",
        "food-image1",
        "5",
        "6",
        "person_image"
    ]
    
    let drivers: [String] = [
        "Lewis Hamilton",
        "Checo Perez",
        "Lando Norris",
        "Charles Leclerc",
        "Max Verstappen"
    ]
    
    var body: some View {
        List {
            Section("First Section") {
                ForEach(images, id: \.self) { image in
                    Text("Item \(image)")
                }
                .onDelete { indexSet in
                    images.remove(atOffsets: indexSet)
                }
            }
            Section("Second Section") {
                ForEach(drivers, id: \.self) { driver in
                    Text(driver)
                }
            }
        }
        .listStyle(SidebarListStyle())
    }
}

#Preview {
    ListModule()
}
