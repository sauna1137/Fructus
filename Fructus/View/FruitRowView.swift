//
//  FruitRowView.swift
//  Fructus
//
//  Created by KS on 2024/07/22.
//

import SwiftUI

struct FruitRowView: View {

    // MARK: - Property

    var fruit: Fruit

    // MARK: - Body

    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .clipShape(RoundedRectangle(cornerRadius: 8))

            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)

                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(Color.secondary)
            }

        }// Hstack
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
        .previewLayout(.sizeThatFits)
}
