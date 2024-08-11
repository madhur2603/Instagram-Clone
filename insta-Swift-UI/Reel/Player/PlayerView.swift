//
//  PlayerView.swift
//  insta-Swift-UI
//
//  Created by Madhu on 08/08/24.
//

import SwiftUI
import AVKit

struct PlayerView: View {
    var reel: Base
    @Binding var currentReel: String
    @State var isMuted = false
    @State var volumeAnimation = false
    @State var showMore = false
    
    
    var body: some View {
        ZStack {
            if let player = reel.player {
                CustomVideoPlayer(player: player)
                
                GeometryReader { proxy -> Color in
                    
                    let minY = proxy.frame(in: .global).minY
                    let size = proxy.size
                    
                    DispatchQueue.main.async {
                        
                        if -minY < (size.height / 2) && minY < (size.height / 2) && currentReel == reel.id {
                            player.play()
                        } else {
                            player.pause()
                        }
                        
                    }
                    
                    return Color.clear
                }
                
                Color.black
                    .frame(width: 150, height: 120, alignment: .bottom)
                    .opacity(0.01)
                    .onTapGesture {

                        isMuted.toggle()
                        
                        // Muting player
                        player.isMuted = isMuted
                        
                        withAnimation { volumeAnimation.toggle() }
                        
                    }
                
                Color.black.opacity(showMore ? 0.25 : 0)
                    .onTapGesture {
                        withAnimation {
                            showMore.toggle()
                        }
                    }
                
                VStack {
                    HStack(alignment: .bottom) {
                        VStack(alignment: .leading, spacing: 10) {
                            DetailsView()
                        }
                        Spacer(minLength: 20)
                        LikeView()
                    }
                }
                .foregroundColor(.white)
                .frame(maxHeight: .infinity, alignment: .bottom)
                
                
                Image(systemName: isMuted ? "speaker.slash.fill" : "speaker.weave.2.fill")
                    .font(.title)
                    .foregroundColor(.secondary)
                    .padding()
                    .background(.secondary)
                    .clipShape(Circle())
                    .foregroundStyle(.black)
                    .opacity(volumeAnimation ? 1 : 0)
                
            }
        }
        .onAppear{
            if let player = reel.player {
                player.isMuted = false
            }
        }
        .onDisappear{
            if let player = reel.player {
                player.isMuted = true
            }
        }
    }
}

