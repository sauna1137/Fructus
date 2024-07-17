//
//  FruitModel.swift
//  Fructus
//
//  Created by KS on 2024/07/16.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutritions: [String]
}
