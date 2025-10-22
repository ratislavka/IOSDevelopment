import UIKit

// 1. Create sample products
let laptop = try Product(
    name: "MacBook Pro", price: 800000,
    category: Product.Category.electronics,
    description: "Fast for performance tasks"
)
let book = try Product(
    name: "11.22.63",
    price: 5000,
    category: Product.Category.books,
    description: "New bestseller by Stephen King!"
)
let headphones = try Product(
    name: "Sony",
    price: 200000,
    category: Product.Category.electronics,
    description: "Best for sound lovers!"
)

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
@MainActor func modifyCart(_ cart: ShoppingCart) {
    cart.addItem(product: headphones, quantity: 1)
}
modifyCart(cart)
// Verify original cart was modified

// 8. Demonstrate VALUE TYPE behavior
let item1 = try CartItem(product: laptop, quantity: 1)
var item2 = item1
try item2.updateQuantity(5)
// Verify item1.quantity is still 1 (not affected)

// 9. Create order from cart
let address = Address(country: "Kazakhstan", city: "Almaty", zipCode: "050000", street: "Tole-Bi")
let order = Order(from: cart, shippingAddress: address)

// 10. Modify cart after order creation
cart.clearCart()
// Verify order still contains original items (immutable snapshot)

print("Order items count: \(order.itemCount)") // Should not be 0
print("Cart items count: \(cart.itemCount)")   // Should be 0



















public struct Address {
    public let country: String
    public let city: String
    public let zipCode: String
    public let street: String
    
    public var formattedAddress: String {
            """
            Country: \(country)
            City: \(city)
            Zip-Code: \(zipCode)
            Street: \(street)
            """
    }
}


public struct CartItem {
    var product: Product
    var quantity: Int
    
    var subtotal: Double {
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

public enum ProductError: Error {
    case mustBePositive(String)
}



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


import Foundation

public struct Product: Equatable {
    public let id: String
    public let name: String
    public let price: Double
    public let category: Category
    public let description: String
    
    public enum Category {
        case electronics, clothing, food, books
    }
    
    public var displayPrice: String {
        // String(format: "$%.2f", price)
        // Format price as currency string (e.g., "$19.99")
        
        "$ \(price) "
    }
    
    public init(
        id: String = UUID().uuidString,
        name: String,
        price: Double,
        category: Category,
        description: String) throws {
//         guard price > 0 else {
//              print("Error: Price must be positive!")
//              return nil
//         }
        
        guard price > 0 else {
            throw ProductError.mustBePositive("Price must be positive")
        }
        
        self.id = id
        self.name = name
        self.price = price
        self.category = category
        self.description = description
    }
}



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
