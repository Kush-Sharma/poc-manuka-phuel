//
//  User.swift
//  poc-manuka-phuel
//
//  Created by Kush Sharma on 11/08/2025.
//

import SwiftUI

struct User: Decodable, Identifiable {
    var id: Int
    let title: String
    let body: String
    var imageUrl: String?
}

extension User {
    static func mockUsers() -> [User] {
        return [User(id: 1, title: "User1", body: "user1@gmail.com"),
                User(id: 1, title: "User2", body: "user2@gmail.com"),
                User(id: 1, title: "User3", body: "user3@gmail.com"),
                User(id: 1, title: "User4", body: "user4@gmail.com"),
                User(id: 1, title: "User5", body: "user5@gmail.com")]
    }
}
