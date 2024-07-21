//
//  FructusApp.swift
//  Fructus
//
//  Created by KS on 2024/07/11.
//

import SwiftUI

@main
struct FructusApp: App {

    @AppStorage("isOnboarding") var isOnboarding: Bool = true

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
