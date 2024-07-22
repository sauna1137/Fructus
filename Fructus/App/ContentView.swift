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

    // MARK: - Body


    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical,  4)
                }
            }
            .navigationTitle("fruits")
        }// Navigation
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
