//
//  Value.swift
//
//
//  Created by out-nazarov2-ms on 18.09.2021.
//

enum Value: Int, CaseIterable, Comparable {
    case ace = 1
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case ten
    case jack
    case queen
    case king
    static let allValues = allCases

    static func < (lhs: Value, rhs: Value) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
}
