//
//  HeroDetail.swift
//  HW3
//
//  Created by 許哲浚 on 2026/5/3.
//

import SwiftUI

struct HeroDetail: View {
    let hero: Hero
    var body: some View {
        ZStack {
            Image(.woodenBackGround)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    ZStack {
                        Image(.fieldBackGround)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 360, height: 250)
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .strokeBorder(Color.black, lineWidth: 2)
                            )
                            .shadow(
                                color: Color.black.opacity(0.5),
                                radius: 3,
                                x: -1,
                                y: 3
                            )
                        AsyncImage(url: hero.image) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .padding()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 360, height: 250)
                        BannerText(hero.name)
                            .frame(width: 360, height: 90)
                            .font(.largeTitle)
                            .bold()
                            .offset(y: 120)
                    }
                    .padding()

                    Color.clear.frame(height: 10)
                    VStack(alignment: .leading) {
                        Text(hero.introTitle)
                            .font(.title)
                            .bold()
                            .foregroundStyle(.yellow)
                        Text(hero.intro)
                            .foregroundStyle(.white)
                            .font(.headline)
                    }
                    .padding()
                    .frame(width: 360)
                    .background {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.black.opacity(0.8))
                            .strokeBorder(Color.black, lineWidth: 2)
                    }
                    .padding(.horizontal, 30)
                    Text(hero.deepIntro)
                        .font(.title2)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    HeroDetail(
        hero: heros[0]
    )
}
