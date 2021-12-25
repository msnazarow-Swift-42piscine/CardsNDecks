//
//  Deck.swift
//
//
//  Created by out-nazarov2-ms on 18.09.2021.
//

import Foundation

class Deck: NSObject {
    static let allSpades = Value.allCases.map { value in Card(c: .spade, v: value) }
    static let allDiamonds = Value.allCases.map { value in Card(c: .diamond, v: value) }
    static let allHearts = Value.allCases.map { value in Card(c: .heart, v: value) }
    static let allClubs = Value.allCases.map { value in Card(c: .club, v: value) }
    static let allCards = allSpades + allDiamonds + allHearts + allClubs
}
