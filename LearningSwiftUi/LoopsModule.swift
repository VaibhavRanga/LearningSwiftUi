//
//  LearningSwiftUiApp.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 18/01/24.
//

import SwiftUI

struct LoopsModule: View {
    var body: some View {
//        VStack() {
//            ForEach(0 ... 10, id: \.self) { index in
//                HStack {
//                    Text("Hello, \(index)")
//                    Spacer()
//                }
//            }
//            Spacer()
//        }
        
        
        
        
//        VStack(alignment: .leading) {
//            
//            ForEach(0 ... 5, id: \.self) {index in
//                
//                HStack(spacing: 10) {
//                    Image("person_image")
//                        .resizable()
//                        .frame(width: 50, height: 50)
//                        .scaledToFit()
//                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//                    VStack(alignment: .leading) {
//                        Text("vaibhav_ranga_official")
//                            .font(.subheadline)
//                            .fontWeight(.medium)
//                        Text("Vaibhav Ranga")
//                            .font(.system(size: 16))
//                    }
//                    
//                    Spacer()
//                    
//                    Image(systemName: "paperplane.circle")
//                }
//                
//                Divider()
//            }
//            Spacer()
//        }
//        .padding()
        
        
        
        
        
        
        
        let drivers: [String] = [
            "Lewis Hamilton",
            "Checo Perez",
            "Lando Norris",
            "Charles Leclerc",
            "Max Verstappen"
        ]
        
        VStack {
            ForEach(drivers, id: \.self) { driver in
                
                HStack(spacing: 10) {
                    Image("person_image")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .scaledToFit()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    VStack(alignment: .leading) {
                        Text("vaibhav_ranga_official")
                            .font(.subheadline)
                            .fontWeight(.medium)
                        Text(driver)
                            .font(.system(size: 16))
                    }
                    
                    Spacer()
                    
                    Image(systemName: "paperplane.circle")
                }
                Divider()
            }
            
            Spacer()
        }
        .padding()
        
        
        
    }
}

#Preview {
    LoopsModule()
}
