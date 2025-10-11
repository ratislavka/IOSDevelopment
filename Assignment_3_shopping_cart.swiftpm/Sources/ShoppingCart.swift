//
//  ShoppingCart.swift
//  Assignment_3_shopping_cart
//
//  Created by Ratislav Ovchinnikov on 01.10.2025.
//

class ShoppingCart {
    // TODO: Add properties
    // - items: [CartItem] (private set, public get)
    // - discountCode: String? (optional)
    var items: [CartItem]
    let discountCode: String?
    
    init() {
        items = []
    }
    
    // TODO: Add item to cart
    func addItem(product: Product, quantity: Int = 1) {
        // Check if product already exists in cart
        // If yes: update quantity
        // If no: add new CartItem
        if items.contains(product){
            product.increaseQuantity()
        } else {
            let newProduct = CartItem(product: product, quantity: quantity)
            items.append(newProduct)
        }
    }
    
    // TODO: Remove item from cart
    func removeItem(productId: String) {
        // Remove CartItem with matching product.id
        for item in items{
            if item.product.id == productId{
                items.remove(at: item.product.id)
            }
        }
//        index = items.firstIndex(where: items.id == productId)
//        items.remove(at: index)
    }
    
    // TODO: Update item quantity
    func updateItemQuantity(productId: String, quantity: Int) {
        // Find item and update quantity
        // If quantity is 0, remove item
    }
    
    // TODO: Clear all items
    func clearCart() {
        items = []
    }
    
    // TODO: Computed property for subtotal
    var subtotal: Double {
        // Sum all item subtotals
    }
    
    // TODO: Computed property for discount amount
    var discountAmount: Double {
        // Calculate discount based on discountCode
        // Example: "SAVE10" = 10% off, "SAVE20" = 20% off
    }
    
    // TODO: Computed property for total
    var total: Double {
        // subtotal - discountAmount
    }
    
    // TODO: Computed property for item count
    var itemCount: Int {
        // Total number of individual items (sum of quantities)
    }
    
    // TODO: Check if cart is empty
    var isEmpty: Bool {
        // Return true if no items
    }
}
