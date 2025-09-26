import UIKit
import Foundation

// Problem 1: FizzBuzz
for number in 1...100{
    if number % 3 == 0 && number % 5 == 0{
        print("FizzBuzz")
    }
    else if number % 5 == 0 {
        print("Buzz")
    }
    else if number % 3 == 0 {
        print("Fizz")
    }
    else {
        print(number)
    }
}


// Problem 2: Prime Numbers
func isPrime(_ number: Int) -> Bool {
    if number < 2 { return false }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

for num in 1...100 {
    if isPrime(num) {
        print(num)
    }
}


// Problem 3: Temperature Converter
func celsiusToFahrenheit(_ c: Double) -> Double {
    return c * 9/5 + 32
}
func celsiusToKelvin(_ c: Double) -> Double {
    return c + 273.15
}
func fahrenheitToCelsius(_ f: Double) -> Double {
    return (f - 32) * 5/9
}
func fahrenheitToKelvin(_ f: Double) -> Double {
    return (f - 32) * 5/9 + 273.15
}
func kelvinToCelsius(_ k: Double) -> Double {
    return k - 273.15
}
func kelvinToFahrenheit(_ k: Double) -> Double {
    return (k - 273.15) * 9/5 + 32
}

let temp = 25.0
let unit = "C"

if unit == "C" {
    print("Fahrenheit: \(celsiusToFahrenheit(temp))")
    print("Kelvin: \(celsiusToKelvin(temp))")
} else if unit == "F" {
    print("Celsius: \(fahrenheitToCelsius(temp))")
    print("Kelvin: \(fahrenheitToKelvin(temp))")
} else if unit == "K" {
    print("Celsius: \(kelvinToCelsius(temp))")
    print("Fahrenheit: \(kelvinToFahrenheit(temp))")
}


// Problem 4: Shopping List Manager
var shoppingList: [String] = []

shoppingList.append("Apples")
shoppingList.append("Milk")
shoppingList.append("Bread")

if let index = shoppingList.firstIndex(of: "Milk") {
    shoppingList.remove(at: index)
}

print("Shopping List:")
for item in shoppingList {
    print(item)
}


// Problem 5: Word Frequency Counter
let sentence = "Hello hello world, hello Swift!"
let lowercased = sentence.lowercased()
let cleaned = lowercased.components(separatedBy: CharacterSet.punctuationCharacters).joined()
let words = cleaned.components(separatedBy: " ")

var frequency: [String: Int] = [:]
for word in words {
    if word == "" {
        continue
    }
    frequency[word, default: 0] += 1
}

for (word, count) in frequency {
    print("\(word): \(count)")
}


// Problem 6: Fibonacci Sequence
func fibonacci(_ n: Int) -> [Int] {
    if n <= 0 {
        return []
    }
    if n == 1 {
        return [0]
    }
    var fib = [0, 1]
    while fib.count < n {
        let next = fib[fib.count - 1] + fib[fib.count - 2]
        fib.append(next)
    }
    return fib
}
print(fibonacci(10))


// Problem 7: Grade Calculator
let students = ["Alice", "John", "Roman"]
let scores = [85, 70, 90]
var total = 0
var highest = scores[0]
var lowest = scores[0]

for s in scores {
    total += s
    if s > highest {
        highest = s
    }
    if s < lowest {
        lowest = s
    }
}
let average = Double(total) / Double(scores.count)

for i in 0..<students.count {
    let status = scores[i] >= Int(average) ? "above average" : "below average"
    print("\(students[i]) scored \(scores[i]) (\(status))")
}
print("Average: \(average)")
print("Highest: \(highest)")
print("Lowest: \(lowest)")


// Problem 8: Palindrome Checker
func isPalindrome(_ text: String) -> Bool {
    // Remove spaces, punctuation, and convert to lowercase
    let cleaned = text.lowercased().filter { $0.isLetter }
    // Convert back to String for comparison
    return cleaned == String(cleaned.reversed())
}

print(isPalindrome("A man, a plan, a canal Panama")) // true


// Problem 9: Simple Calculator
func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}
func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}
func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}
func divide(_ a: Double, _ b: Double) -> Double? {
    if b == 0 {
        return nil
    }
    return a / b
}

let a = 10.0
let b = 2.0
let operation = "/"

if operation == "+" {
    print(add(a, b))
} else if operation == "-" {
    print(subtract(a, b))
} else if operation == "*" {
    print(multiply(a, b))
} else if operation == "/" {
    if let result = divide(a, b) {
        print(result)
    } else {
        print("Error: Cannot divide by zero")
    }
}


// Problem 10: Unique Characters
func hasUniqueCharacters(_ text: String) -> Bool {
    var seen: Set<Character> = []
    for char in text {
        if seen.contains(char) {
            return false
        }
        seen.insert(char)
    }
    return true
}

print(hasUniqueCharacters("Swift")) // true
print(hasUniqueCharacters("Hello")) // false
