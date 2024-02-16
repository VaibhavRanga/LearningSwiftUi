//
//  ColorsModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 16/02/24.
//

import SwiftUI

struct ColorsModule: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
//            .fill(Color.red)
//            .fill(Color(.systemGray3))
//            .fill(Color(.tertiaryLabel))
//            .fill(Color(.secondarySystemBackground))
            .fill(Color("custom-color"))      //custom color defined as a color set in xcassets
            .frame(width: 300, height: 200)
            .shadow(color: .black, radius: 10)      //shadow
    }
}

#Preview {
    ColorsModule()
}
