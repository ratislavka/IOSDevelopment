//
//  CartItem.swift
//  
//
//  Created by Ratislav Ovchinnikov on 11.10.2025.
//


public struct CartItem {
    public var product: Product
    public var quantity: Int
    
    public var subtotal: Double {
        product.price * Double(quantity)
    }
    
    public mutating func updateQuantity(_ newQuantity: Int) throws{
        if newQuantity > 0 {
            quantity = newQuantity
        }
        else {
            throw ProductError.mustBePositive("Quantity must be positive!")
        }
    }
    
    public mutating func increaseQuantity(by amount: Int) {
        quantity += amount
    }
    
    public init(product: Product, quantity: Int) throws {
        guard quantity > 0 else {
            throw ProductError.mustBePositive("Quantity must be positive!")
        }
        self.product = product
        self.quantity = quantity
    }
}
