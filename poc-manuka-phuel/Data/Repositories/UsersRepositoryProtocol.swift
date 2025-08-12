//
//  UsersRepositoryProtocol.swift
//  poc-manuka-phuel
//
//  Created by Kush Sharma on 11/08/2025.
//


protocol UsersRepositoryProtocol {
    func fetchUsers() async throws -> [User]
}