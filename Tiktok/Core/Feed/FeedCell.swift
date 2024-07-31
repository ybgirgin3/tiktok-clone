//
//  FeedCell.swift
//  Tiktok
//
//  Created by Yusuf Berkay Girgin on 31.07.2024.
//

import SwiftUI

struct FeedCell: View {
  let post: Int

  var body: some View {
    ZStack {
      Rectangle()
        .fill(.pink)
        .containerRelativeFrame([.horizontal, .vertical])
        .overlay {
          Text("post \(post)")
        }
      VStack {
        Spacer()

        HStack(alignment: .bottom) {
          VStack(alignment: .leading) {
            Text("Yusuf Berkay girgin")
              .fontWeight(.semibold)
            Text("10 random facts about Albert Einstein")
          }.foregroundStyle(.white)
            .font(.subheadline)

          Spacer()

          VStack(spacing: 28) {
            // profile image
            Circle()
              .frame(width: 48, height: 48)
              .foregroundStyle(.gray)
            // like button
            Button(
              action: {},
              label: {
                VStack {
                  Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundStyle(.white)
                    .bold()

                  Text("27")
                    .font(.caption)
                    .foregroundStyle(.white)
                }
              })
            // comment button
            Button(
              action: {},
              label: {
                VStack {
                  Image(systemName: "ellipsis.bubble.fill")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundStyle(.white)
                    .bold()

                  Text("27")
                    .font(.caption)
                    .foregroundStyle(.white)
                }
              })
            // Save Button
            Button(
              action: {},
              label: {
                Image(systemName: "bookmark.fill")
                  .resizable()
                  .frame(width: 22, height: 28)
                  .foregroundStyle(.white)
              })
            // Share Button
            Button(
              action: {},
              label: {
                Image(systemName: "arrowshape.turn.up.right.fill")
                  .resizable()
                  .frame(width: 28, height: 28)
                  .foregroundStyle(.white)
              })
          }
        }.padding(.bottom, 80)

      }.padding()

    }
  }
}

#Preview {
  FeedCell(post: 2)
}
