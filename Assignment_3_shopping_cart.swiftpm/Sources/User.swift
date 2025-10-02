//
//  User.swift
//  Assignment_3_shopping_cart
//
//  Created by Ratislav Ovchinnikov on 01.10.2025.
//

class User {
    let userId: String
    let name: String
    let email: String
    private(set) var orderHistory: [Order]
    
    // Add method to place order
    func placeOrder(_ order: Order) {
        // Add order to history
    }
    
    // Computed property for total spent
    var totalSpent: Double {
        // Sum all order totals
    }
}
