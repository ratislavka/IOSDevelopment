//
//  Order.swift
//  Assignment_3_shopping_cart
//
//  Created by Ratislav Ovchinnikov on 01.10.2025.
//

import Foundation

struct Order {
    // TODO: Add properties (all should be 'let')
    let orderId: String //generate UUID
    let items: [CartItem] //(copy from cart)
    let subtotal: Double
    let discountAmount: Double
    let total: Double
    let timestamp: Date
    let shippingAddress: Address
    
    // TODO: Implement initializer
    init(from cart: ShoppingCart, shippingAddress: Address) {
        // Create immutable snapshot of cart
        // Generate unique orderId
        // Set timestamp to now
        // Copy all values from cart
    }
    
    // TODO: Add computed property
    var itemCount: Int {
        // Total number of items in order
    }
}
