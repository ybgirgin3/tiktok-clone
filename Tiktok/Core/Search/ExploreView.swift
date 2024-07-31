//
//  ExploreView.swift
//  Tiktok
//
//  Created by Yusuf Berkay Girgin on 1.08.2024.
//

import SwiftUI

struct ExploreView: View {
  var body: some View {
    NavigationStack {
      ScrollView {
        LazyVStack(spacing: 16) {
          ForEach(0..<20) { user in
            UserCell()
              .padding(.horizontal)
          }
        }
      }
      .navigationTitle("Explore")
      .navigationBarTitleDisplayMode(.inline)
      .padding(.top)
    }
  }
}

#Preview {
  ExploreView()
}
