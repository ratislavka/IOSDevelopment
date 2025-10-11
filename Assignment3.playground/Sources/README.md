1. Why did you choose class for ShoppingCart?

    I chose class type for cart because cart should have a single shared object that can be updated and passed around.
    For example in real life shop you take one cart and go around the shop with it, same cart while you're shopping, 
    and if you pass this cart for example to your friend, then he will have same items that you placed there.
    This way changes made in one place are same everywhere.



2. Why did you choose struct for Product and Order?

    Because Product and Order should all be independent, each instance is a different item.
    Each product shoudnt affect each other. For example two bottles of water at a store, if you drink one, or take the label off, 
    it wont affect the other one, or the other ones for that matter



3. Explain one example where reference semantics matter in your code

    Shopping cart class is a reference semantics
    
        ```swift
            func modifyCart(_ cart: ShoppingCart) {
                cart.addItem(product: headphones, quantity: 1)
            }
            modifyCart(cart)
        ```
    For example here these lines of code work on the same cart instance, after modifyCart(cart), the main cart is the same and contains all updates
    as they point to the same place in memory
    
    Shop example: If Husband and Wife use the same shopping cart, when husband places a bread and gives the cart to his wife, teh bread would stil be there
    and if wife places milk and passes the cart back to her husband, he will again see bread and milk in their shopping cart.


4. Explain one example where value semantics matter in your code
    Value semantics are the struct types, they are Order, Product and CartItem. 

    For example in this code:
    
        ```swift
            let item1 = CartItem(product: laptop, quantity: 1)
            var item2 = item1
            item2.updateQuantity(5)

            print(item1.quantity) // the result will be 1
            print(item2.quantity) // the result will be 5
        ```
    Both item1 and item2 are different objects, they are copies. This is because we dont need all laptops to have same values, or all books having same names and authors.
    It is like printing two photos, cutting one and second will remain unchanged

5. What challenges did you face and how did you solve them?

    Testing the project, I initially created swift project and had problems with test running it, then replaced everything into playground project
    and also had some problems with visibility of all classes.
    Also, at first i wasnt sure how exactly to find item in items array to remove or add it.
    I wasnt sure how to do getters and setters in swift and at first tried to write them like in Java OOP.
