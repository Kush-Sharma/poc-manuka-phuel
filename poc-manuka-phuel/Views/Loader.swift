//
//  Loader.swift
//  poc-manuka-phuel
//
//  Created by Kush Sharma on 12/08/2025.
//

import SwiftUI

struct Loader: View {
    var body: some View {
        ZStack {
            Color.gray.opacity(0.5)
                .ignoresSafeArea()
            
            ProgressView()
                .tint(.black)
                .scaleEffect(2)
        }
    }
}

#Preview {
    Loader()
}
