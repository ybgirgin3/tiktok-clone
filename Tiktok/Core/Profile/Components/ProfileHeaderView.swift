//
//  ProfileHeaderView.swift
//  Tiktok
//
//  Created by Yusuf Berkay Girgin on 1.08.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
  var body: some View {
    VStack(spacing: 16) {
      VStack(spacing: 8) {
        // profile image
        Image(systemName: "person.circle.fill")
          .resizable()
          .frame(width: 80, height: 80)
          .foregroundStyle(Color(.systemGray5))

        // username
        Text("@bekocan.girgin")
          .font(.subheadline)
          .fontWeight(.semibold)
      }

      // stats view
      HStack(spacing: 16) {
        // following
        UserStatView(value: 5, title: "Following")

        // follower
        UserStatView(value: 1, title: "Follower")

        // Likes
        UserStatView(value: 10, title: "Likes")
      }
      Button(
        action: /*@START_MENU_TOKEN@*/ {} /*@END_MENU_TOKEN@*/,
        label: {
          Text("Edit Profile")
            .font(.subheadline)
            .fontWeight(.semibold)
            .frame(width: 360, height: 32)
            .foregroundStyle(.black)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 6))
        }
      )
      Divider()
    }
  }
}

#Preview {
  ProfileHeaderView()
}
