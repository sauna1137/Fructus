//
//  ContentView.swift
//  Fructus
//
//  Created by KS on 2024/07/11.
//

import SwiftUI

struct ContentView: View {

    // MARK: - Property
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false

    // MARK: - Body


    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical,  4)
                    }
                }
            }
//            .listStyle(.plain)
            .navigationTitle("fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }// Button
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingView()
                    })
                }
            }
        }// Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
