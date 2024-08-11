//
//  Reel.swift
//  insta-Swift-UI
//
//  Created by Madhu on 06/08/24.
//

import Foundation
import AVKit

struct Base: Identifiable{
    
    var id = UUID().uuidString
    var player: AVPlayer?
    var mediaFile: Reel
}

struct Reel: Identifiable {
    
    let id: UUID
    let name: String
    let profile: String
    let description: String
    let videoURL: String
    
    init(id: UUID = UUID(), name: String, profile: String, description: String, videoURL: String) {
        self.id = id
        self.name = name
        self.profile = profile
        self.description = description
        self.videoURL = videoURL
    }
}

extension Reel {
    
    static var sampleData: [Reel] {
        [
        Reel(name: "Madhu", profile: "", description: "", videoURL: "Reel2"),
        Reel(name: "Balan", profile: "", description: "", videoURL: "Reel2"),
        Reel(name: "Sakthi", profile: "", description: "", videoURL: "Reel2"),
        Reel(name: "Abi", profile: "", description: "", videoURL: "video-3"),
        Reel(name: "Mahi", profile: "", description: "", videoURL: "Reel2"),
        ]
    }
    
}

