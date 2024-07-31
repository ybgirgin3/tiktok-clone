//
//  NotificationsView.swift
//  Tiktok
//
//  Created by Yusuf Berkay Girgin on 1.08.2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(0 ..< 10) { notification in
                        NotificationCell()
                            .padding(.top)
                    }
                }
            }
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    NotificationsView()
}
