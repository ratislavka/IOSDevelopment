//
//  ShoppingCart.swift
//  
//
//  Created by Ratislav Ovchinnikov on 11.10.2025.
//


public class ShoppingCart {
    private(set) var items: [CartItem]
    var discountCode: String?
    
    public init() {
        items = []
    }
    
    public func addItem(product: Product, quantity: Int = 1) {
        if let index = items.firstIndex(where: {item in item.product == product}) {
            items[index].quantity += quantity
        } else {
            do{
                let newItem = try CartItem(product: product, quantity: quantity)
                items.append(newItem)
            }
            catch {print (error)}
        }
    }
    
    public func removeItem(productId: String) {
        if let index = items.firstIndex(where: {item in item.product.id == productId}){
            items.remove(at: index)
        }
    }
    
    public func updateItemQuantity(productId: String, quantity: Int) {
        if let index = items.firstIndex(where: {item in item.product.id == productId}){
            do{try items[index].updateQuantity(quantity)} catch {print(error)}
            
            if items[index].quantity == 0{
                items.remove(at: index)
            }
        }
    }
    
    func clearCart() {
        // items = []
        items.removeAll()
    }
    
    var subtotal: Double {
        // var subtotal: Double
        var subtotal = 0.0
        for item in items{
            subtotal += item.product.price * Double(item.quantity)
        }
        return subtotal
    }
    
    var discountAmount: Double {
        switch discountCode{
        case "SAVE10":
            return subtotal * 0.1
        case "SAVE20":
            return subtotal * 0.2
        case "SAVE30":
            return subtotal * 0.3
        case "SAVE40":
            return subtotal * 0.4
        case "SAVE50":
            return subtotal * 0.5
        default:
            return 0
        }
    }
    
    var total: Double {
        subtotal - discountAmount
    }
    
    var itemCount: Int {
        var count = 0
        for item in items {
            count += item.quantity
        }
        return count
    }
    
    var isEmpty: Bool {
        items.isEmpty
    }
    
    public func getItems() -> [CartItem]{
        items
    }
}
