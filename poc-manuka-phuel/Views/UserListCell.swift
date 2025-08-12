//
//  UserListCell.swift
//  poc-manuka-phuel
//
//  Created by Kush Sharma on 11/08/2025.
//

import SwiftUI

struct UserListCell: View {
    let user: User
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: user.imageUrl ?? "https://picsum.photos/id/13/200"))
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(user.title)
                
                Text(user.body)
                    .font(.caption)
            }
        }
    }
}

#Preview {
    UserListCell(user: .mockUsers()[2])
}
