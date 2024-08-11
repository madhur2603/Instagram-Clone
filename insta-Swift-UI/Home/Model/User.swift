//
//  User.swift
//  insta-Swift-UI
//
//  Created by Madhu on 28/07/24.
//

import Foundation

struct User: Identifiable {
    let id: UUID
    let name: String
    let image: String
    let location: String?
    
    init(id: UUID = UUID(), name: String, image: String, location: String){
        self.id = id
        self.name = name
        self.image = image
        self.location = location
    }
}

extension User {
    static var sampleData: [User] {
        return [
            User(name: "Your story", image: "post1", location: "Chennai"),
            User(name: "Carlos", image: "post2", location: "Chennai"),
            User(name: "Snoog Dog", image: "post3", location: "Chennai"),
            User(name: "Michael", image: "post4", location: "Chennai"),
            User(name: "Sofia", image: "post5", location: "Chennai"),
            User(name: "Josh", image: "post3", location: "Chennai"),
            User(name: "Al2", image: "post1", location: "Chennai"),
            User(name: "Merry", image: "post5", location: "Chennai"),
            User(name: "Julian", image: "post2", location: "Chennai"),
            User(name: "Pablo", image: "post4", location: "Chennai"),
        ]
    }
}
