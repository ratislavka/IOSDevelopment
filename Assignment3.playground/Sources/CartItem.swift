//
//  CartItem.swift
//  
//
//  Created by Ratislav Ovchinnikov on 11.10.2025.
//


struct CartItem {
    var product: Product
    var quantity: Int
    
    var subtotal: Double {
        product.price * Double(quantity)
    }
    
    mutating func updateQuantity(_ newQuantity: Int) throws{
        if newQuantity > 0 {
            quantity = newQuantity
        }
        else {
            throw ProductError.mustBePositive("Quantity must be positive!")
        }
    }
    
    mutating func increaseQuantity(by amount: Int) {
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
