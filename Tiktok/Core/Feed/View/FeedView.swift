//
//  FeedView.swift
//  Tiktok
//
//  Created by Yusuf Berkay Girgin on 31.07.2024.
//

import SwiftUI

struct FeedView: View {
  @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition: String?
    
  var body: some View {
    ScrollView {
      LazyVStack(spacing: 0) {
        ForEach(viewModel.posts) { post in
          FeedCell(post: post)
                .id(post.id)
        }
      }.scrollTargetLayout()
    }
    .scrollPosition(id: $scrollPosition)
    .scrollTargetBehavior(.paging)
      .ignoresSafeArea()
      .onChange(of: scrollPosition, { oldValue, newValue in
          print("DEBUG: $scrollPosition is \(newValue)")
      })
  }
}

#Preview {
  FeedView()
}
