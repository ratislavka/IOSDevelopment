//
//  Order.swift
//  
//
//  Created by Ratislav Ovchinnikov on 11.10.2025.
//


import Foundation

public struct Order {

    let orderId: String
    let items: [CartItem]
    let subtotal: Double
    let discountAmount: Double
    let total: Double
    let timestamp: Date
    let shippingAddress: Address
    
    public init(from cart: ShoppingCart, shippingAddress: Address) {
        orderId = UUID().uuidString
        items = cart.getItems()
        subtotal = cart.subtotal
        discountAmount = cart.discountAmount
        total = cart.total
        timestamp = Date()
        self.shippingAddress = shippingAddress
    }

    // How many items were ordered/ How many items in the order
    public var itemCount: Int {
        var count = 0
        for item in items {
            count += item.quantity
        }
        return count
    }
    
}
