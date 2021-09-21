//
//  Card.swift
//
//
//  Created by out-nazarov2-ms on 18.09.2021.
//

import Foundation

class Card: NSObject, Comparable {
    let color: Color
    let value: Value

    override var description: String {
        "(\(value.rawValue), \(color.rawValue.capitalized))"
    }

    init(c: Color, v: Value) {
        color = c
        value = v
    }

    override func isEqual(_ object: Any?) -> Bool {
        guard let card = object as? Card else { return false }
        return color == card.color && value == card.value
    }

    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.color == rhs.color && lhs.value == rhs.value
    }
    
    static func < (lhs: Card, rhs: Card) -> Bool {
        if lhs.color != rhs.color {
            return lhs.color < rhs.color
        } else {
            return lhs.value < rhs.value
        }
    }

}
