//
//  User.swift
//  
//
//  Created by Ratislav Ovchinnikov on 11.10.2025.
//


public class User {
    let userId: String
    let name: String
    let email: String
    private(set) var orderHistory: [Order]
    var spent: Double
    
    // New order made by the User
    public func placeOrder(_ order: Order) {
        orderHistory.append(order)
    }
    
    //How much money the User spent
    public var totalSpent: Double {
        var total = 0.0
        for order in orderHistory{
            total += order.total
        }
        return total
    }
    
    public init(userId: String, name: String, email: String, orderHistory: [Order], spent: Double) {
        self.userId = userId
        self.name = name
        self.email = email
        self.orderHistory = orderHistory
        self.spent = spent
    }
}
