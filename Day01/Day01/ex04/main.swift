//
//  Test.swift
//
//
//  Created by out-nazarov2-ms on 18.09.2021.
//

let sortedDeck = Deck(shuffle: false)
print("SortedDeck = \(sortedDeck)\n")
let shuffledDeck = Deck(shuffle: true)
print("ShuffledDeck = \(shuffledDeck)\n")

for _ in 0 ... 10 {
    shuffledDeck.draw()
}

print("Deck after drawing 10 card = \(shuffledDeck)\n")
print("10 card that were drawed = \(shuffledDeck.outs)\n")

for card in shuffledDeck.outs {
    shuffledDeck.fold(c: card)
}

print("10 card that were discarded = \(shuffledDeck.discards)\n")
