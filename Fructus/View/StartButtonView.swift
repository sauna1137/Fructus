//
//  StartButtonView.swift
//  Fructus
//
//  Created by KS on 2024/07/16.
//

import SwiftUI

struct StartButtonView: View {

    // MARK: - Property

    // MARK: - Body

    // MARK: - <# Any #>

    var body: some View {
        Button {
            print("tap")
        } label: {
            HStack(spacing: 8) {
                Text("start")

                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }
        .tint(.white)
    }
}

#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
        .background(Color.black)
}
