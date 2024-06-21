//
//  BiometricAuthentication.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 21/06/24.
//

import LocalAuthentication
import SwiftUI

struct BiometricAuthenticationModule: View {
    @State private var isUnlocked = false
    
    var body: some View {
        VStack {
            Text(isUnlocked ? "Unlocked" : "Locked")
        }
        .onAppear(perform: authenticate)
    }
    
    func authenticate() {
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "We need to unlock your data."
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                if success {
                    //authentication succeeded
                    
                    isUnlocked = true
                } else {
                    //authentication failed
                }
            }
        } else {
            //no biometrics available
        }
    }
}

#Preview {
    BiometricAuthenticationModule()
}
