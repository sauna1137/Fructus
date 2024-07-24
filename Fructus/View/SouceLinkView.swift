//
//  SouceLinkView.swift
//  Fructus
//
//  Created by KS on 2024/07/24.
//

import SwiftUI

struct SouceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()

            }
        }
    }
}

#Preview {
    SouceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
}
