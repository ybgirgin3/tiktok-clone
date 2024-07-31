//
//  UserCell.swift
//  Tiktok
//
//  Created by Yusuf Berkay Girgin on 1.08.2024.
//

import SwiftUI

struct UserCell: View {
  var body: some View {
    HStack(spacing: 12) {
      Image(systemName: "person.circle.fill")
        .resizable()
        .frame(width: 48, height: 48)
        .foregroundStyle(Color(.systemGray5))
      VStack(alignment: .leading) {
        Text("bekocan_tiktok")
          .font(.subheadline)
          .fontWeight(.semibold)

        Text("Bekocan")
          .font(.footnote)
      }

      Spacer()

    }
  }
}

#Preview {
  UserCell()
}
