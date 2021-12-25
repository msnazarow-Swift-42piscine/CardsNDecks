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

    var cards = allCards
    var discards: [Card] = []
    var outs: [Card] = []

    override var description: String {
        "\(cards)"
    }

    init(shuffle: Bool) {
        shuffle ? cards.shuffle() : cards.sort()
    }

    func draw() -> Card? {
        guard cards.first != nil else { return nil }
        let card = cards.removeFirst()
        outs.append(card)
        return card
    }

    func fold(c: Card) {
        if outs.contains(c) {
            discards.append(c)
        }
    }
}

extension Array {
    mutating func shuffle() {
        guard count > 1 else { return }
        for index in indices {
            let newpos: Int = numericCast(arc4random_uniform(numericCast(count)))
            swapAt(index, newpos)
        }
    }
}
