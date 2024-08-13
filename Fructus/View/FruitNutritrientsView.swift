//
//  FruitNutritrientsView.swift
//  Fructus
//
//  Created by KS on 2024/07/26.
//

import SwiftUI

struct FruitNutritrientsView: View {

    // MARK: - property

    var fruit: Fruit
    let nutrients = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]

    // MARK: - body

    var body: some View {

        GroupBox() {
            DisclosureGroup("Nutrients value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in

                    Divider().padding(.vertical, 2)

                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(.body.bold())

                        Spacer(minLength: 25)
                        Text(fruit.nutritions[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

#Preview {
    FruitNutritrientsView(fruit: fruitsData[0])
}
