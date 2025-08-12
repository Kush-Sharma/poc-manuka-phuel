//
//  ContentViewModel.swift
//  poc-manuka-phuel
//
//  Created by Kush Sharma on 11/08/2025.
//

import SwiftUI

@Observable final class ContentViewModel {
    var users: [User] = []
    var showAlert: Bool = false
    
    var userRepository: UsersRepositoryProtocol
    var alertError: NetworkError?
    
    init(repository: UsersRepositoryProtocol) {
        self.userRepository = repository
    }
    
    func fetchUsers() async {
        do {
            self.users = try await self.userRepository.fetchUsers()
        } catch let error as NetworkError {
            alertError = error
            showAlert = true
        } catch {
            alertError = NetworkError.genericError
            showAlert = true
        }
    }
}
