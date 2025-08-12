//
//  ContentView.swift
//  poc-manuka-phuel
//
//  Created by Kush Sharma on 11/08/2025.
//

import SwiftUI

struct ContentView: View {
    @Bindable private var viewModel = ContentViewModel(repository: UsersRepository())
    
    var body: some View {
        NavigationStack {
            List(viewModel.users) { user in
                UserListCell(user: user)
            }
            .accessibilityIdentifier("usersList")
            .navigationTitle(Text("Users"))
            .task {
                await viewModel.fetchUsers()
            }
            .alert(isPresented: $viewModel.showAlert, error: viewModel.alertError) {_ in 
                Button("Done") {
                    viewModel.showAlert = false
                }
            } message: { error in
                Text(error.recoverySuggestion ?? "An unknown error occurred.")
            }
        }
    }
}

#Preview {
    ContentView()
}




