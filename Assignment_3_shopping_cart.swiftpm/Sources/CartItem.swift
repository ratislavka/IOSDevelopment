//
//  CartItem.swift
//  Assignment_3_shopping_cart
//
//  Created by Ratislav Ovchinnikov on 01.10.2025.
//

struct CartItem {
    let product: Product
    var quantity: Int
    
    var subtotal: Double {
        product.price * Double(quantity)
    }
    
    // TODO: Add mutating method to update quantity
    mutating func updateQuantity(_ newQuantity: Int) throws{
        // Validate newQuantity > 0
        // Update quantity
        if quantity > 0 {
            quantity = newQuantity
        }
        else {
            throw ProductError.mustBePositive("Quantity must be positive!")
        }
    }
    
    // TODO: Add method to increase quantity
    mutating func increaseQuantity(by amount: Int) {
        // Add to existing quantity
        quantity += amount
    }
    
    init(product: Product, quantity: Int) throws {
        guard quantity > 0 else {
            throw ProductError.mustBePositive("Quantity must be positive!")
        }
        self.product = product
        self.quantity = quantity
    }
}
