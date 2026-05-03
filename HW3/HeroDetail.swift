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
                        AsyncImage(url: hero.image) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .padding()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 360, height: 250)
                        Image(.nameBanner)
                            .resizable()
                            .frame(width: 360, height: 90)
                            .offset(y: 120)
                        Text(hero.name)
                            .font(.largeTitle)
                            .bold()
                            .offset(y: 115)
                    }
                    .padding()
                    
                    Color.clear.frame(height: 10)
                    ZStack {
                        
                        VStack(alignment: .leading) {
                            Text(hero.introTitle)
                                .font(.title)
                                .bold()
                                .foregroundStyle(.yellow)
                            Text(hero.intro)
                                .font(.headline)
                        }
                        .padding()
                        .frame(width: 360)
                        .background {
                            RoundedRectangle(cornerRadius: 20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .strokeBorder(Color.black, lineWidth: 2)
                                )
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding(.horizontal, 30)
                    Text(hero.deepIntro)
                        .font(.largeTitle)
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
