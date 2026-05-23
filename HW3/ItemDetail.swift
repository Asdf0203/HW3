//
//  ItemDetail.swift
//  HW3
//
//  Created by 許哲浚 on 2026/5/3.
//

import SwiftUI

struct ItemDetail: View {
    let item: Item
    var body: some View {
        ZStack {
            Image(.woodenBackGround)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    ZStack {
                        RoundedRectangle(
                            cornerRadius: 20
                        )
                        .fill(.black.opacity(0.7))
                        .strokeBorder(
                            Color.black,
                            lineWidth: 2
                        )
                        .overlay {
                            AsyncImage(url: item.image) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                            } placeholder: {
                                ProgressView()
                            }
                        }
                        .padding(.horizontal)
                        BannerText(item.name)
                            .font(.title)
                            .frame(width: 400, height: 80)
                            .offset(y: 80)
                    }
                    .frame(height: 140)
                    Color.clear.frame(height: 40)
                    Text(item.intro)
                        .padding()
                    Text(item.deepIntro)
                        .font(.title2)
                    Spacer()
                }
            }
            .padding()
        }
    }
}

#Preview {
    ItemDetail(item: items[0])
}
