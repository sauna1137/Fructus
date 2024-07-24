//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by KS on 2024/07/23.
//

import SwiftUI

struct FruitHeaderView: View {

    var fruit: Fruit
    @State var isAnimationImage = false

    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimationImage ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimationImage = true
            }
        }
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 375, height: 440))
}
