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
    var isLoading: Bool = false
    
    var userRepository: UsersRepositoryProtocol
    var alertError: NetworkError?
    
    init(repository: UsersRepositoryProtocol) {
        self.userRepository = repository
    }
    
    func fetchUsers() async {
        isLoading = true
        do {
            self.users = try await self.userRepository.fetchUsers()
            isLoading = false
        } catch let error as NetworkError {
            alertError = error
            showAlert = true
            isLoading = false
        } catch {
            alertError = NetworkError.genericError
            showAlert = true
            isLoading = false
        }
    }
}
