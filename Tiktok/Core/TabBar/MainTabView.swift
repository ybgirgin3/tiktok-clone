//
//  MainTabView.swift
//  Tiktok
//
//  Created by Yusuf Berkay Girgin on 29.07.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Feed")
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
            Text("Friends")
                .tabItem {
                    VStack {
                        Image(systemName: "person.2")
                        Text("Friends")
                    }
                }
            Text("Upload Post")
                .tabItem {
                    VStack {
                        Image(systemName: "plus")
//                        Text("Upload Post")
                    }
                }
            Text("Inbox")
                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                        Text("Inbox")
                    }
                }
            Text("Profile")
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                }
        }
    }
}

#Preview {
    MainTabView()
}
