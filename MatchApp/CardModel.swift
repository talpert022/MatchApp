//
//  CardModel.swift
//  MatchApp
//
//  Created by Tommy Alpert on 12/3/19.
//  Copyright © 2019 Tommy Alpert. All rights reserved.
//

import Foundation

class CardModel{
    
    func getCards() -> [Card]{
        
        // Declare an empty array
        var generateCards = [Card]()
        // Randomly generate 8 pairs of cards
        while (generateCards.count < 16) {
            // Generate a random num
            let randomNumber = Int.random(in: 1...13)
            // Create two new card objects
            let cardOne = Card()
            let cardTwo = Card()
            // Set their image names
            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName = "card\(randomNumber)"
            if !generateCards.contains(where: {$0.imageName == cardOne.imageName}){
                // Add them to the array
                generateCards += [cardOne, cardTwo]
                print(randomNumber)
            }
        }
        // Randomize the cards within the array
        generateCards.shuffle()
        // Return the array
        return generateCards
    }
}


