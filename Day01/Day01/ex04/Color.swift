//
//  Color.swift
//
//
//  Created by out-nazarov2-ms on 18.09.2021.
//

enum Color: String, CaseIterable, Comparable {
    case spade
    case diamond
    case heart
    case club

    static let allColors = allCases

    static func < (lhs: Color, rhs: Color) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
}
