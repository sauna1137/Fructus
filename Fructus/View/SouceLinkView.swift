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
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SouceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
}
