//
//  Tests.swift
//  Assignment_3_shopping_cart
//
//  Created by Ratislav Ovchinnikov on 01.10.2025.
//

// 1. Create sample products
let laptop = Product(...)
let book = Product(...)
let headphones = Product(...)

// 2. Test adding items to cart
let cart = ShoppingCart()
cart.addItem(product: laptop, quantity: 1)
cart.addItem(product: book, quantity: 2)

// 3. Test adding same product twice (should update quantity)
cart.addItem(product: laptop, quantity: 1)
// Verify laptop quantity is now 2

// 4. Test cart calculations
print("Subtotal: \(cart.subtotal)")
print("Item count: \(cart.itemCount)")

// 5. Test discount code
cart.discountCode = "SAVE10"
print("Total with discount: \(cart.total)")

// 6. Test removing items
cart.removeItem(productId: book.id)

// 7. Demonstrate REFERENCE TYPE behavior
func modifyCart(_ cart: ShoppingCart) {
    cart.addItem(product: headphones, quantity: 1)
}
modifyCart(cart)
// Verify original cart was modified

// 8. Demonstrate VALUE TYPE behavior
let item1 = CartItem(product: laptop, quantity: 1)
var item2 = item1
item2.updateQuantity(5)
// Verify item1.quantity is still 1 (not affected)

// 9. Create order from cart
let address = Address(...)
let order = Order(from: cart, shippingAddress: address)

// 10. Modify cart after order creation
cart.clearCart()
// Verify order still contains original items (immutable snapshot)

print("Order items count: \(order.itemCount)") // Should not be 0
print("Cart items count: \(cart.itemCount)")   // Should be 0
