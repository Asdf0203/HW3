//
//  Hero.swift
//  HW3
//
//  Created by 許哲浚 on 2026/5/3.
//

import SwiftUI

struct Hero: Identifiable {
    let id = UUID()
    let name: String
    let image: URL?
    let imageOffset: CGSize
    let introTitle: String
    let intro: String
    let deepIntro: String
}

let heros = [
    Hero(
        name: "Ronan",
        image: URL(
            string:
                "https://backpackbrawl.wiki.gg/images/thumb/Ronan01-skin01.png/300px-Ronan01-skin01.png?2a1043"
        ),
        imageOffset: .zero, 
        introTitle: "Sword, Board, and Thorns",
        intro:
            "Ronan feels the best offense is a good defense.",
        deepIntro: ""
    ),
    Hero(
        name: "Buzz",
        image: URL(
            string:
                "https://backpackbrawl.wiki.gg/images/thumb/Buzz01-skin01.png/300px-Buzz01-skin01.png?3187f7)"
        ),
        imageOffset: CGSize(width: -20, height: 0),
        introTitle: "Apiarist Extraordinaire",
        intro:
            "Harnessing the power of his buzzing allies, Buzz excels at death of a thousand stings.",
        deepIntro: ""
    )
]
