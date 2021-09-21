//
//  Test.swift
//
//
//  Created by out-nazarov2-ms on 18.09.2021.
//

let card1 = Card(c: .spade, v: .ace)
print("First card: \(card1)")
let card2 = Card(c: .diamond, v: .two)
print("Second card: \(card2)")
let card3 = Card(c: .diamond, v: .two)
print("Third card: \(card3)")
print("First card == Second card \(card1 == card2)")
print("Second card == Third card \(card2 == card3)")
