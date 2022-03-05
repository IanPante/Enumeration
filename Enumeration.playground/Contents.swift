import UIKit

enum Suit {
    case clubs, spades, diamonds, hearts
}

var cardInHand: Suit = .hearts

print(cardInHand)

cardInHand = .spades

print(cardInHand)

func cardFortune(cardSuit: Suit) {
    switch cardSuit {
    case .clubs:
        print("Take risks")
    case .spades:
        print("Follow your dreams")
    case .diamonds:
        print("Focus on your craft")
    case .hearts:
        print("Try something new")
    }
}

cardFortune(cardSuit: .clubs)
cardFortune(cardSuit: .spades)
cardFortune(cardSuit: .diamonds)
cardFortune(cardSuit: .hearts)

enum Value{
    case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
}

struct Card {
    var value: Value
    var suit: Suit
}

let firstCard = Card(value: .ace, suit: .spades)
let secondCard = Card(value: .eight, suit: .clubs)

print("\(firstCard.value) of \(firstCard.suit)")
print("\(secondCard.value) of \(secondCard.suit)")

enum Stroke{
    case freestyle, butterfly, backstroke, breaststroke
}

struct SwimmingWorkout {
    var distance: Double
    var time: Double
    var stroke: Stroke
    
    static var freestyleWorkouts: [SwimmingWorkout] = []
    static var butterflyWorkouts: [SwimmingWorkout] = []
    static var backstrokeWorkouts: [SwimmingWorkout] = []
    static var breaststrokWorkouts: [SwimmingWorkout] = []
    
    func save() {
        switch stroke {
        case .freestyle:
            SwimmingWorkout.freestyleWorkouts.append(self)
        case .butterfly:
            SwimmingWorkout.butterflyWorkouts.append(self)
        case .backstroke:
            SwimmingWorkout.backstrokeWorkouts.append(self)
        case .breaststroke:
            SwimmingWorkout.breaststrokWorkouts.append(self)
        }
    }
}

let firstFreestyle = SwimmingWorkout(distance: 100, time: 60, stroke: .freestyle)
let secondFreestyle = SwimmingWorkout(distance: 150, time: 100, stroke: .freestyle)
let firstButterfly = SwimmingWorkout(distance: 50, time: 30, stroke: .butterfly)

firstFreestyle.save()
secondFreestyle.save()
firstButterfly.save()

print(SwimmingWorkout.freestyleWorkouts)
print(SwimmingWorkout.butterflyWorkouts)
print(SwimmingWorkout.backstrokeWorkouts)
print(SwimmingWorkout.breaststrokWorkouts)
