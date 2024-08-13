//
//  SettingLabelView.swift
//  Fructus
//
//  Created by KS on 2024/08/13.
//

import SwiftUI

struct SettingLabelView: View {

    var labelText: String
    var labelImage: String

    var body: some View {
        HStack {
            Text(labelText.uppercased())
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingLabelView(labelText: "fructus", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
