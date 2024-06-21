//
//  DocumentsDirectoryModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 19/06/24.
//

import SwiftUI

struct DocumentsDirectoryModule: View {
    var body: some View {
        Button("Read and Write") {
            let data = Data("Test Message".utf8)
            let url = URL.documentsDirectory.appending(path: "message.txt")

            do {
                try data.write(to: url, options: [.atomic, .completeFileProtection])
                let input = try String(contentsOf: url)
                print(input)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

#Preview {
    DocumentsDirectoryModule()
}

//extension FileManager {
//    func getData<T: Data>(from path: String) -> T {
//        let url = URL.documentsDirectory.appending(path: path)
//        do {
//            let input = try Data(contentsOf: url)
//            return input
//        } catch {
//            print(error.localizedDescription)
//        }
//    }
//}
