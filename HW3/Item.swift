//
//  Item.swift
//  HW3
//
//  Created by 許哲浚 on 2026/5/3.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let image: URL?
    let intro: String
    let deepIntro: String
}

let items = [
    Item(name: "Water Potion",
         image: URL(string: "https://backpackbrawl.wiki.gg/images/Water_Potion.png?a68f41"),
         intro: "",
         deepIntro: "")
]
