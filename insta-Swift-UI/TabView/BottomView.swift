//
//  TabView.swift
//  insta-Swift-UI
//
//  Created by Madhu on 27/07/24.
//

import SwiftUI

enum TabItems: String {
    case home = "Home"
    case search = "Search"
    case reels = "Reels"
    case addPost = "Addpost"
    case profile = "Profile"
}

struct BottomView: View {
    @State private var currentTab = TabItems.home.rawValue
    
    var body: some View {
        TabView(selection: $currentTab) {
            HomeView(users: User.sampleData, posts: Post.sampleData)
                .tabItem {
                    Image(currentTab == TabItems.home.rawValue ? "Home" : "Home")
                }
                .tag(TabItems.home.rawValue)
                .navigationBarHidden(true)
            
            SearchView()
                .tabItem {
                    Image(currentTab == TabItems.search.rawValue ? "Search" : "Search")
                }
                .tag(TabItems.search.rawValue)
            
            AddPostView()
                .tabItem {
                    Image(currentTab == TabItems.addPost.rawValue ? "Addpost" : "Addpost")
                }
                .tag(TabItems.addPost.rawValue)
            
            ReelsView()
                .tabItem {
                    Image(currentTab == TabItems.reels.rawValue ? "Reels" : "Reels")
                }
                .tag(TabItems.reels.rawValue)
//                .background(Color.black)
            
            ProfileView()
                .tabItem {
                    Image(currentTab == TabItems.profile.rawValue ? "Profile" : "Profile")
                }
                .tag(TabItems.profile.rawValue)
        }
    }
}
