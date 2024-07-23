//
//  FruitDetailView.swift
//  Fructus
//
//  Created by KS on 2024/07/23.
//

import SwiftUI

struct FruitDetailView: View {

    // MARK: - Proprties

    var fruit: Fruit

    // MARK: - Body

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER


                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])

                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)

                        // Nutrition


                        // SubHeadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[0])

                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)

                        // Link

                    } // vstack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } // Vstack
            } // Scroll
        } // Navigation
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
