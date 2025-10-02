//
//  CartItem.swift
//  Assignment_3_shopping_cart
//
//  Created by Ratislav Ovchinnikov on 01.10.2025.
//

struct CartItem {
    let product: Product
    let quantity: Int
    
    var subtotal: Double {
        product.price * Double(quantity)
    }
    
    // TODO: Add mutating method to update quantity
    mutating func updateQuantity(_ newQuantity: Int) {
        // Validate newQuantity > 0
        // Update quantity
    }
    
    // TODO: Add method to increase quantity
    mutating func increaseQuantity(by amount: Int) {
        // Add to existing quantity
    }
    
    init(product: Product, quantity: Int) throws {
        guard quantity > 0 else {
            throw ProductError.mustBePositive("Quantity must be positive!")
        }
        self.product = product
        self.quantity = quantity
    }
}
