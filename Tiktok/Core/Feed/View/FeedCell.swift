//
//  FeedCell.swift
//  Tiktok
//
//  Created by Yusuf Berkay Girgin on 31.07.2024.
//

import AVKit
import SwiftUI

struct FeedCell: View {
  let post: Post
  var player: AVPlayer

  init(post: Post) {
    self.post = post
    self.player = AVPlayer(url: URL(string: post.videoUrl)!)
  }

  var body: some View {
    ZStack {
      CustomVideoPlayer(player: player)
        .edgesIgnoringSafeArea(.all)
        .containerRelativeFrame([.horizontal, .vertical])

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

    }.onAppear {
      //        player.play()
      print("post \(post)")
    }
    .onDisappear {
      player.pause()
    }
  }
}

#Preview {
  FeedCell(
    post: Post(
      id: NSUUID().uuidString,
      videoUrl:
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4"))
}
