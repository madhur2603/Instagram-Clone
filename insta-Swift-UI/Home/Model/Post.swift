//
//  Post.swift
//  insta-Swift-UI
//
//  Created by Madhu on 28/07/24.
//

import Foundation

struct Post: Identifiable {
    let id: UUID
    let user: User
    let image: String
    let description: String?
    
    init(id: UUID = UUID(), user: User, image: String, description: String? = nil){
        self.id = id
        self.user = user
        self.image = image
        self.description = description
    }
}

extension Post {
    static var sampleData: [Post] {
        [
            Post(user: User.sampleData[5], image: "post1", description: "This movie was amazing 😍"),
            Post(user: User.sampleData[3], image: "post5", description: "The best anime of hero, it's just beautiful 🔥❤️🇩🇴"),
            Post(user: User.sampleData[4], image: "post2"),
            Post(user: User.sampleData[1], image: "post4"),
            Post(user: User.sampleData[2], image: "post3", description: "Programmers are very incredible, they do everithing that we use")
        ]
    }
}
