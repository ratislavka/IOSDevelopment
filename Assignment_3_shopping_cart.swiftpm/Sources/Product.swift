//
//  Product.swift
//  Assignment_3_shopping_cart
//
//  Created by Ratislav Ovchinnikov on 01.10.2025.
//

import Foundation

struct Product {
    let id: String
    let name: String
    let price: Double
    let category: Category
    let description: String
    
    enum Category {
        case electronics, clothing, food, books
    }
    
    var displayPrice: String {
        "$ \(price) "
//        String(format: "$%.2f", price)
        // Format price as currency string (e.g., "$19.99")
    }
    
    init(id: String = UUID().uuidString, name: String, price: Double, category: Category, description: String) throws {
        //        guard price > 0 else {
        //            print("Error: Price must be positive!")
        //            return nil
        //        }
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



