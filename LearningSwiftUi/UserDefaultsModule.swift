//
//  UserDefaultsModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 21/05/24.
//

import SwiftUI

//struct UserDefaultsModule: View {
//    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
//    
//    var body: some View {
//        Button("Tap Count: \(tapCount)") {
//            tapCount += 1
//            UserDefaults.standard.set(tapCount, forKey: "Tap")
//        }
//    }
//}


//struct UserDefaultsModule: View {
//    @AppStorage("tapCount") private var tapCount = 0
//    
//    var body: some View {
//        Button("Tap Count: \(tapCount)") {
//            tapCount += 1
//        }
//    }
//}


struct User: Codable {
    let firstName: String
    let lastName: String
}

struct UserDefaultsModule: View {
    @State private var user = User(firstName: "Taylor", lastName: "Swift")
    
    init() {
        if let storedData = UserDefaults.standard.data(forKey: "UserData") {
            if let decodedData = try? JSONDecoder().decode(User.self, from: storedData) {
                // assign the decoded data to a variable and return
                user = decodedData
                return
            }
        }
        user = User(firstName: "", lastName: "")
    }
    
    var body: some View {
        Button("Save Data") {
            let encoder = JSONEncoder()
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

#Preview {
    UserDefaultsModule()
}
