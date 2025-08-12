//
//  NetworkProvider.swift
//  poc-manuka-phuel
//
//  Created by Kush Sharma on 11/08/2025.
//

import SwiftUI

struct NetworkProvider {
    
    static let shared = NetworkProvider()
    
    private init() {}
    
    static let baseURLString = "https://jsonplaceholder.typicode.com/"
    
    private let usersURL =  baseURLString + "posts"
    
    func fetchUsers() async throws -> [User] {
        
        guard let url = URL(string: usersURL) else {
            throw NetworkError.invalidURL
        }
        
        let (data, urlResponse) = try await URLSession.shared.data(from: url)
        
        guard let urlHttpResponse = urlResponse as? HTTPURLResponse, urlHttpResponse.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        
        do {
             return try JSONDecoder().decode([User].self, from: data)
        }
        catch {
           throw NetworkError.invalidData
        }
    }
}


