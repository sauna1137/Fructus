//
//  SettingView.swift
//  Fructus
//
//  Created by KS on 2024/08/12.
//

import SwiftUI

struct SettingView: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section1

                    GroupBox(
                        label:
                            SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
                    )
                    {
                        Divider().padding(.vertical, 4)

                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 9))

                            Text("Most furits are naturally low in fat, sodium and much more")
                                .font(.footnote)
                        }
                    }

                    // MARK: - Section2

                    // MARK: - Section3

                    GroupBox(label: SettingLabelView(labelText: "Application", labelImage: "apps.iphone")) {

                        SettingRowView(name: "Developer", content: "John / Jane")
                        SettingRowView(name: "Designer", content: "Robert Peters")
                        SettingRowView(name: "Compability", content: "iOS14")
                        SettingRowView(name: "Website", content: "SwiftUI Master Class", linkDestination: "swiftuimasterclass.com")
                        SettingRowView(name: "X", content: "@RobertPeters", linkDestination: "twitter.com/robertpeters")
                        SettingRowView(name: "SwiftUI", content: "2.0")
                        SettingRowView(name: "Version", content: "1.1.0")
                    }

                }
                .navigationTitle("Settings")
                .navigationBarItems(trailing:
                                        Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                })
                )
                .padding()
            } // scroll
        }// nav
    }
}

#Preview {
    SettingView()
}



