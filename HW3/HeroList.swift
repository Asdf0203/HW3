//
//  HeroList.swift
//  HW3
//
//  Created by 許哲浚 on 2026/5/3.
//

import SwiftUI

let heroGridColumns = Array(repeating: GridItem(), count: 2)

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
                    Color.clear.frame(height: 50)
                    BannerText("英雄")
                        .frame(width: 300, height: 80)
                        .font(.largeTitle)
                        .bold()
                    LazyVGrid(columns: heroGridColumns, spacing: 5) {
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
                                            .frame(width: 150, height: 180)
                                            .scaleEffect(0.9, anchor: .bottom)
                                            .clipShape(Rectangle())
                                            .contentShape(Rectangle())
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .offset(y: -35)  //寫在外面有向上凸出背景的效果
                                    .background {
                                            RoundedRectangle(
                                                cornerRadius: 20
                                            )
                                            .fill(.black.opacity(0.7))
                                            .strokeBorder(
                                                Color.black,
                                                lineWidth: 2
                                            )
                                    }
                                    BannerText(hero.name)
                                        .font(.headline)
                                        .foregroundStyle(.black)
                                        .frame(width: 170, height: 60)
                                        .offset(y: 70)
                                }
                            }
                        }
                    }
                    Color.clear.frame(height: 1000)
                }
                .ignoresSafeArea()
                .padding(.horizontal, 30)
            }
        }
    }
}

#Preview {
    HeroList()
}
