//
//  FruitCardView.swift
//  Fructus
//
//  Created by KS on 2024/07/15.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Property

    @State private var isAnimating = false

    // MARK: - Body




    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                // Title

                Text("Blueberry")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(.white).opacity(0.15), radius: 2)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)

                // head line
                Text("Blueberries are sweet, nutritions are wildely popular fruit all over the world")
                    .foregroundStyle(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(16)
                    .frame(maxWidth: 480)

                // button start
                StartButtonView()

            } // VStack
        }// ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal, 20)

    }
}


// MARK: - Preview
#Preview {
    FruitCardView()
        .previewLayout(.fixed(width: 320, height: 640))
}
