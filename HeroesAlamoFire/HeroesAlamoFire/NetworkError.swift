//
//  NetworkError.swift
//  HeroesAlamoFire
//
//  Created by Ratislav Ovchinnikov on 05.12.2025.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
    case networkFailure(Error)
    
    var description: String {
        switch self {
        case .invalidURL: return "Invalid URL, check again"
        case .noData: return "No data found"
        case .decodingError: return "Failed to decode data"
        case .networkFailure(let error): return "Network error \(error.localizedDescription)"
        }
    }
}

