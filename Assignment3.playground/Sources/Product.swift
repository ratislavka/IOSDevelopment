//
//  Product.swift
//  
//
//  Created by Ratislav Ovchinnikov on 11.10.2025.
//


import Foundation

public struct Product: Equatable {
    public let id: String
    public let name: String
    public let price: Double
    public let category: Category
    public let description: String
    
    public enum Category {
        case electronics, clothing, food, books
    }
    
    public var displayPrice: String {
        // String(format: "$%.2f", price)
        // Format price as currency string (e.g., "$19.99")
        
        "$ \(price) "
    }
    
    public init(
        id: String = UUID().uuidString,
        name: String,
        price: Double,
        category: Category,
        description: String) throws {
//         guard price > 0 else {
//              print("Error: Price must be positive!")
//              return nil
//         }
        
        guard price > 0 else {
            throw ProductError.mustBePositive("Price must be positive")
        }
        
        self.id = id
        self.name = name
        self.price = price
        self.category = category
        self.description = description
    }
}
