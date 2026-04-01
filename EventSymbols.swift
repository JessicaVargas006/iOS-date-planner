//
//  EventSymbols.swift
//  DatePlanner
//
//  Created by  on 2/21/26.
//

import Foundation

enum EventSymbols {
    static let names = [
        "calendar",
        "gift.fill",
        "heart.fill",
        "star.fill",
        "flag.fill",
        "book.fill",
        "gamecontroller.fill",
        "airplane",
        "camera.fill",
        "leaf.fill"
    ]

    static func randomName() -> String {
        names.randomElement() ?? "calendar"
    }
}
