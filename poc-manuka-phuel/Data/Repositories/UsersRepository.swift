//
//  UsersRepository.swift
//  poc-manuka-phuel
//
//  Created by Kush Sharma on 11/08/2025.
//


final class UsersRepository: UsersRepositoryProtocol {
    func fetchUsers() async throws -> [User] {
        return try await NetworkProvider.shared.fetchUsers()
    }
}



