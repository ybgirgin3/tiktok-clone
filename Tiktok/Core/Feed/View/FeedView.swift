//
//  FeedView.swift
//  Tiktok
//
//  Created by Yusuf Berkay Girgin on 31.07.2024.
//

import SwiftUI

struct FeedView: View {
  @StateObject var viewModel = FeedViewModel()
  var body: some View {
    ScrollView {
      LazyVStack(spacing: 0) {
        ForEach(viewModel.posts) { post in
            let _ = print("url in feed view \(post)")
          FeedCell(post: post)
        }
      }.scrollTargetLayout()
    }.scrollTargetBehavior(.paging)
      .ignoresSafeArea()
  }
}

#Preview {
  FeedView()
}
