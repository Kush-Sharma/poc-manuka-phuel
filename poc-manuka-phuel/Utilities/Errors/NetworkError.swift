//
//  NetworkError.swift
//  poc-manuka-phuel
//
//  Created by Kush Sharma on 11/08/2025.
//

import Foundation

enum NetworkError: LocalizedError {
    case invalidURL
    case invalidResponse
    case invalidData
    case genericError
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .invalidResponse:
            return "Invalid Response"
        case .invalidData:
            return "Invalid Data"
        case .genericError:
            return "Generic Error"
        }
    }
    
    var recoverySuggestion: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL. Please try again later."
        case .invalidResponse:
            return "Invalid Response. Please try again later."
        case .invalidData:
            return "Invalid Data. Please try again later."
        case .genericError:
            return "Something went wrong. Please try again later."
        }
    }
}
