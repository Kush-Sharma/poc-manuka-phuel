//
//  poc_manuka_phuelTests.swift
//  poc-manuka-phuelTests
//
//  Created by Kush Sharma on 11/08/2025.
//

import Testing
@testable import poc_manuka_phuel

@Suite("poc-manuka-phuelTests")
struct poc_manuka_phuelTests {
    
    let mockRepository = MockUsersRepository()
    
    @Test("Check for fetching users successfully",
          .timeLimit(.minutes(1)),
          .tags(.critical))
    func testSuccess() async throws {
        //Arrange
        mockRepository.shouldSucceed = true
        let viewModel = ContentViewModel(repository: mockRepository)
        
        //Act
        await viewModel.fetchUsers()
        
        //Assert
        #expect(viewModel.users.count == 5)
        #expect(viewModel.users[3].title == "User4")
    }
    
    @Test("Check for fetching users failure",
          .timeLimit(.minutes(1)),
          .tags(.nonCritical))
    func testFailure() async throws {
        //Arrange
        mockRepository.shouldSucceed = false
        let viewModel = ContentViewModel(repository: mockRepository)
        
        //Act
        await viewModel.fetchUsers()
        
        //Assert
        #expect(viewModel.users.isEmpty)
        #expect(viewModel.alertError == .invalidData)
    }
    
}

extension Tag {
    @Tag static var critical: Self
    @Tag static var nonCritical: Self
}
