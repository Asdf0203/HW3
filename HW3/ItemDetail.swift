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
            VStack {
                AsyncImage(url: item.image) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .border(.black, width: 2)
                        .background(.gray)
                        .padding()
                } placeholder: {
                    ProgressView()
                }

                Text(item.intro)
                    .padding()
                Text("deep intro")
                    .font(.largeTitle)
                Spacer()
            }

        }
    }
}

#Preview {
    ItemDetail(item: items[0])
}
