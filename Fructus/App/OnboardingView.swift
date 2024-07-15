//
//  OnboardingView.swift
//  Fructus
//
//  Created by KS on 2024/07/16.
//

import SwiftUI

struct OnboardingView: View {

    // MARK: - Properties


    // MARK: - Body



    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }
        } // Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
