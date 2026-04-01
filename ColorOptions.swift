//
//  ColorOptions.swift
//  DatePlanner
//
//  Created by  on 2/21/26.
//

import SwiftUI

enum ColorOptions {
    static let colors: [Color] = [
        .red, .orange, .yellow, .green, .mint, .teal, .cyan, .blue, .indigo, .purple, .pink
    ]

    static func random() -> Color {
        colors.randomElement() ?? .blue
    }
}
