//
//  FrutasApp.swift
//  Frutas
//
//  Created by Alfonso Patron on 07/01/24.
//

import SwiftUI

@main
struct FrutasApp: App {
    
    @AppStorage("isOnboardingView2") var isOnboarding: Bool = true
    
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding {
                OnboardingView()
             
            } else {
                ContentView()

            }
        }
    }
}
