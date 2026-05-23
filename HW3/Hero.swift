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
        introTitle: "劍、盾與荊棘",
        intro:
            "Ronan 認為最好的進攻就是防守。",
        deepIntro: "剛接觸這個角色時，因為大部分的道具都還沒有解鎖，你只要盡量把物品都升上去就好了。我的建議是等級低的時候，盡量堆越多荊棘效果越好，等級高了以後，可以開始走盾流，對面完全打不動。"
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
