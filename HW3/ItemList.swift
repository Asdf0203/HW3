//
//  ItemList.swift
//  HW3
//
//  Created by 許哲浚 on 2026/5/3.
//

import SwiftUI

let itemGridColumns = Array(repeating: GridItem(), count: 4)

struct ItemList: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image(.woodenBackGround)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 400)
                    .ignoresSafeArea()
                ScrollView {
                    Color.clear.frame(height:50)
                    BannerText("物品")
                        .frame(width: 300, height: 80)
                        .font(.largeTitle)
                        .bold()
                    LazyVGrid(columns: itemGridColumns, spacing: 10) {
                        ForEach(items) { item in
                            NavigationLink {
                                ItemDetail(item: item)
                            } label: {
                                ZStack {
                                    AsyncImage(url: item.image) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .offset(item.imageOffset)
                                            .frame(width: 80, height: 100)
                                            .scaleEffect(0.6, anchor: .bottom)
                                            .clipShape(Rectangle())
                                            .contentShape(Rectangle())
                                    } placeholder: {
                                        ProgressView()
                                    }
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
    ItemList()
}
