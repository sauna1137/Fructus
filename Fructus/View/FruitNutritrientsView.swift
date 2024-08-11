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
                    HStack {
                        Text(nutrients[item])
                        Spacer()
                        Text(fruit.nutritions[item])
                    }
                }
            }
        }
    }
}

#Preview {
    FruitNutritrientsView(fruit: fruitsData[0])
}
