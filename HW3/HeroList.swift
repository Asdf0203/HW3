//
//  HeroList.swift
//  HW3
//
//  Created by 許哲浚 on 2026/5/3.
//

import SwiftUI

let columns = Array(repeating: GridItem(), count: 3)

struct HeroList: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image(.woodenBackGround)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 400)
                    .ignoresSafeArea()
                    ScrollView {
                        Text("Heroes")
                            .font(.largeTitle)
                            .bold()
                        LazyVGrid(columns: columns, spacing: 5) {
                            ForEach(heros) { hero in
                                NavigationLink {
                                    HeroDetail(hero: hero)
                                } label: {
                                    ZStack {
                                        AsyncImage(url: hero.image) { image in
                                            image
                                                .resizable()
                                                .offset(hero.imageOffset)
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 100, height: 150)
                                                .scaleEffect(0.95, anchor: .bottom)
                                                .clipShape(Rectangle())
                                                .contentShape(Rectangle())
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .offset(y: -30)//寫在外面有向上凸出背景的效果
                                        .background {
                                            Color.gray
                                                .clipShape(
                                                    RoundedRectangle(
                                                        cornerRadius: 20
                                                    )
                                                )
                                                .overlay(
                                                    RoundedRectangle(
                                                        cornerRadius: 20
                                                    )
                                                    .strokeBorder(
                                                        Color.black,
                                                        lineWidth: 2
                                                    )
                                                )
                                        }
                                        ZStack {
                                            Image(.nameBanner)
                                                .resizable()
                                                .frame(width: 120, height: 50)
                                                .offset(y: 50)
                                            Text(hero.name)
                                                .font(.default)
                                                .foregroundStyle(.black)
                                                .offset(y: 48)
                                        }
                                    }
                                }
                            }
                        }
                        Color.clear.frame(height: 1000)
                    }
            }
        }
    }
}

#Preview {
    HeroList()
}
