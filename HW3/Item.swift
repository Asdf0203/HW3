//
//  Item.swift
//  HW3
//
//  Created by 許哲浚 on 2026/5/3.
//

import SwiftUI

enum ItemRarity {
    case commom
    case rare
    case epic
    case lengendary
    case mythic
    case unique
}

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let image: URL?
    let intro: String
    let imageOffset: CGSize
    let deepIntro: String
    let rarity: ItemRarity
}

let items = [
    Item(name: "藥水",
         image: URL(string: "https://backpackbrawl.wiki.gg/images/Water_Potion.png?a68f41"),
         intro: "藥水是一個藥水類型的物品，稀有度是common，所有英雄共享。需要花費兩個金幣購買。",
         imageOffset: CGSize(width: 0, height: -30),
         deepIntro: "如果你覺得你玩的這個戰術需要做藥水的話，記得前期多拿一點，因為品級是common，後期反而很難出現",
         rarity: .commom),
    Item(name: "棕鼠",
         image: URL(string: "https://backpackbrawl.wiki.gg/images/thumb/Brown_Rat.png/200px-Brown_Rat.png?b5f2be"),
         intro: "",
         imageOffset: CGSize(width: 20, height: -30),
         deepIntro: "",
         rarity: .commom),
    Item(name: "掃把",
         image: URL(string: "https://backpackbrawl.wiki.gg/images/thumb/Broom.png/66px-Broom.png?958a48"),
         intro: "",
         imageOffset: CGSize(width: 0, height: -80),
         deepIntro: "",
         rarity: .commom),
    Item(name: "龍楓葉",
         image: URL(string: "https://backpackbrawl.wiki.gg/images/thumb/Dragonleaf.png/100px-Dragonleaf.png?25d6f8"),
         intro: "",
         imageOffset: CGSize(width: 0, height: -30),
         deepIntro: "",
         rarity: .commom),
    Item(name: "Flotsam",
         image: URL(string: "https://backpackbrawl.wiki.gg/images/thumb/Flotsam.png/200px-Flotsam.png?63ba80"),
         intro: "Flotsam is an Accessory type item for Morrow. It costs 3 Gold and unlocks at Hero Level 2",
         imageOffset: CGSize(width: 0, height: -30),
         deepIntro: "Flotsam is an Accessory type item for Morrow. It costs 3 Gold and unlocks at Hero Level 2",
         rarity: .commom)
]
