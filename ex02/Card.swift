//
//  Card.swift
//
//
//  Created by out-nazarov2-ms on 18.09.2021.
//

import Foundation

class Card: NSObject {
    let color: Color
    let value: Value

    override var description: String {
        "\(value.rawValue) \(color)"
    }

    init(c: Color, v: Value) {
        color = c
        value = v
    }

    override func isEqual(_ object: Any?) -> Bool {
        guard let card = object as? Card else { return false }
        return color == card.color && value == card.value
    }
}

