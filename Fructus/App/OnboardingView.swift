//
//  OnboardingView.swift
//  Fructus
//
//  Created by KS on 2024/07/16.
//

import SwiftUI

struct OnboardingView: View {

    // MARK: - Properties

    var fruits: [Fruit] = fruitsData

    // MARK: - Body



    var body: some View {
        TabView {
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            }
        } // Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
