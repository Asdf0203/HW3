//
//  BannerText.swift
//  HW3
//
//  Created by 許哲浚 on 2026/5/4.
//

import SwiftUI

struct BannerText: View {
    let text: String
    
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        ZStack {
            Image(.nameBanner)
                .resizable()
            Text(text)
        }
    }
}

#Preview {
    BannerText("Hi")
}
