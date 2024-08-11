//
//  HomeView.swift
//  insta-Swift-UI
//
//  Created by Madhu on 27/07/24.
//

import SwiftUI

struct HomeView: View {
    
    let users: [User]
    let posts: [Post]
    
    @State private var headerOffset: CGFloat = 0
       @State private var lastScrollPosition: CGFloat = 0
       
       var body: some View {
           VStack(spacing: 0) {
               HeaderView()
                   .offset(y: headerOffset)
                   .zIndex(1) // Ensures the header is on top of other content

               ScrollView {
                   GeometryReader { geometry in
                       Color.clear
                           .preference(key: ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .global).minY)
                   }
                   .frame(height: 0)
                   
                   VStack {
                       ScrollView(.horizontal, showsIndicators: false) {
                           HStack {
                               ForEach(users) { user in
                                   StoryView(user: user)
                               }
                           }
                           .padding(.horizontal)
                       }
                       .padding(.vertical, 5)

                       Divider()

                       VStack {
                           ForEach(posts) { post in
                               Feed(post: post)
                           }
                       }
                   }
               }
               .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                   let delta = value - lastScrollPosition
                   lastScrollPosition = value
                   
                   if delta > 0 { // scrolling down
                       withAnimation {
                           headerOffset = min(headerOffset + delta, 0)
                       }
                   } else if delta < 0 { // scrolling up
                       withAnimation {
                           headerOffset = max(headerOffset + delta, -headerHeight)
                       }
                   }
               }
           }
       }
       
       var headerHeight: CGFloat {
           60 // Adjust based on your HeaderView height
       }


//    var body: some View {
//        VStack{
//            HeaderView()
//
//            ScrollView(.vertical, showsIndicators: false){
//                ScrollView(.horizontal, showsIndicators: false){
//                    HStack{
//                        ForEach(users) { user in
//                            StoryView(user: user)
//                        }
//                    }
//                    .padding(.horizontal)
//                }
//                .padding(.vertical, 5)
//                
//                Divider()
//                
//                VStack{
//                    ForEach(posts) { post in
//                        Feed(post: post)
//                    }
//                }
//            }
//        }
//    }
}

struct ScrollOffsetPreferenceKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

#Preview {
    HomeView(users: User.sampleData, posts: Post.sampleData)
}
