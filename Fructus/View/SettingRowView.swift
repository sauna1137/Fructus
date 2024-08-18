//
//  SettingRowView.swift
//  Fructus
//
//  Created by KS on 2024/08/19.
//

import SwiftUI

struct SettingRowView: View {

    var name: String
    var content: String

    var body: some View {
        HStack {
            Text(name).foregroundStyle(.gray)
            Spacer()
            Text(content)
        }
    }
}

#Preview {
    SettingRowView(name: "Developer", content: "John / Jane")
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
}
