//
//  User.swift
//  
//
//  Created by Ratislav Ovchinnikov on 11.10.2025.
//


class User {
    let userId: String
    let name: String
    let email: String
    private(set) var orderHistory: [Order]
    var spent: Double
    
    func placeOrder(_ order: Order) {
        orderHistory.append(order)
    }
    
    var totalSpent: Double {
        var total = 0.0
        for order in orderHistory{
            total += order.total
        }
        return total
    }
    
    init(userId: String, name: String, email: String, orderHistory: [Order], spent: Double) {
        self.userId = userId
        self.name = name
        self.email = email
        self.orderHistory = orderHistory
        self.spent = spent
    }
}
