//
//  CurrentUserProfileView.swift
//  Tiktok
//
//  Created by Yusuf Berkay Girgin on 1.08.2024.
//  NOTE: logged in user view

import SwiftUI

struct CurrentUserProfileView: View {
  var body: some View {
    NavigationStack {
      ScrollView {
        VStack(spacing: 12) {
          // profile header
          ProfileHeaderView()

          // post grid view
          PostGridView()
        }
        .padding(.top)
      }
      .navigationTitle("Profile")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

#Preview {
  CurrentUserProfileView()
}
