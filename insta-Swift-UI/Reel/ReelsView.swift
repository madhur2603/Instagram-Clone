//
//  ReelsView.swift
//  insta-Swift-UI
//
//  Created by Madhu on 27/07/24.
//

import SwiftUI
import AVFoundation

struct ReelsView: View {
    
    @State var reels = Reel.sampleData.map { item -> Base in
        let url = Bundle.main.path(forResource: item.videoURL, ofType: "mp4") ?? ""
        let player = AVPlayer(url: URL(fileURLWithPath: url))
        return Base(player: player, mediaFile: item)
    }
    
    @State var currentReel: String = ""
    
    var body: some View {
        GeometryReader { proxy in
            
            TabView(selection: $currentReel) {
                ForEach(reels) { post in
                    PlayerView(reel: post, currentReel: $currentReel)
                    .frame(width: proxy.size.width)
                    .rotationEffect(Angle(degrees: -90))
                    .ignoresSafeArea(.all, edges: .top)
                    .tag(post.id)
                }
            }
            .rotationEffect(Angle(degrees: 90))
            .frame(width: proxy.size.height)
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(maxWidth: proxy.size.width)
        }

        .onAppear {
            currentReel = reels.first?.id ?? ""
        }
    }
}

#Preview {
    ReelsView()
}
