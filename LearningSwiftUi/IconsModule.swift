//
//  IconsModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 16/02/24.
//

import SwiftUI

struct IconsModule: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
//            .renderingMode(.original)
            .symbolRenderingMode(.multicolor)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .font(.largeTitle)
//            .font(.system(size: 200))
//            .foregroundStyle(.red)
//            .frame(width: 300, height: 300)
    }
}

#Preview {
    IconsModule()
}
