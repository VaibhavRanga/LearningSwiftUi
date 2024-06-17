//
//  ShareLinkModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 17/06/24.
//

import SwiftUI

struct ShareLinkModule: View {
    
    let example = Image(.pizza)
    
    var body: some View {
        ShareLink(item: URL(string: "https://google.com")!)
        
        ShareLink("Learn SwiftUI", item: URL(string: "https://hackingwithswift.com")!)
        
        ShareLink(item: URL(string: "https://hackingwithswift.com")!, subject: Text("Some website"), message: Text("You can do 100 days of swiftUI here"))
        
        ShareLink(item: URL(string: "https://google.com")!) {
            Label("Some link", systemImage: "paperplane")
        }
        
        ShareLink(item: example, preview: SharePreview("Pizza", image: example)) {
            Label("Send pizza image", systemImage: "fork.knife")
        }
    }
}

#Preview {
    ShareLinkModule()
}
