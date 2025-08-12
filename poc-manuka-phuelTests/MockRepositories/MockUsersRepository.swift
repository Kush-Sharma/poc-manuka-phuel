//
//  MockUsersRepository.swift
//  poc-manuka-phuel
//
//  Created by Kush Sharma on 12/08/2025.
//


final class MockUsersRepository: UsersRepositoryProtocol {
    var shouldSucceed: Bool = true
    
    func fetchUsers() async throws -> [User] {
        if shouldSucceed {
            return User.mockUsers()
        } else {
            throw NetworkError.invalidData
        }
    }
}
