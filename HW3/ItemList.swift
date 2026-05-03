//
//  ItemList.swift
//  HW3
//
//  Created by 許哲浚 on 2026/5/3.
//

import SwiftUI

struct ItemList: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image(.woodenBackGround)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                ScrollView {
                    Text("items")
                        .font(.largeTitle)
                        .bold()
                    LazyVGrid(columns: columns, spacing: 5) {
                        ForEach(items) { item in
                            NavigationLink {
                                ItemDetail(item: item)
                            } label: {
                                ZStack {
                                    AsyncImage(url: item.image) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 100, height: 150)
                                            .scaleEffect(0.8, anchor: .bottom)
                                            .padding()
                                            .clipShape(Rectangle())
                                            .contentShape(Rectangle())
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .offset(y: -30)  //寫在外面有向上凸出背景的效果
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
            }
        }
    }
}

#Preview {
    ItemList()
}
