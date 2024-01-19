//
//  TextFieldModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 19/01/24.
//

import SwiftUI

struct TextFieldModule: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            TextField("Enter email", text: $email)
                .font(.headline)
                .padding(12)
                .background(Color(.systemGroupedBackground))
                .cornerRadius(10)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.emailAddress)
                .autocorrectionDisabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                .textInputAutocapitalization(.never)
            
            SecureField("Enter password", text: $password)
                .font(.headline)
                .padding(12)
                .background(Color(.systemGroupedBackground))
                .cornerRadius(10)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.default)
                .autocorrectionDisabled(true)
                .textInputAutocapitalization(.never)
            
            Button {
                print("Email: \(email)")
                print("Password: \(password)")
            } label: {
                Text("Log in")
                    .frame(width: 360, height: 48)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

#Preview {
    TextFieldModule()
}
