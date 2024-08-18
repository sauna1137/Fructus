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
                        Divider().padding(.vertical, 4)

                        HStack {
                            Text("Developer").foregroundStyle(.gray)
                            Spacer()
                            Text("John / Jane")
                        }
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



