import UIKit

// Step 1
let firstName: String = "Ratislav"
let lastName = "Ovchinnikov"
let age: Int = 20
let birthYear = 2005
let isStudent = true
let height: Double = 1.81
let isTall: Bool = height > 1.75
let currentYear = Calendar.current.component(.year, from: Date())
// let currentYear = 2025
var myCalculatedAge = currentYear - birthYear


// Step 2
//let hobby: [String] = ["Music", "Racing", "Reading" ]
let hobby = ["Music", "Racing", "Reading" ]
var numberOfHobbies = hobby.count
let favoriteNumber = 7
let isHobbyCreative = true
let placeOfStudy = "KBTU"


// Step 3
var myLifeStory =
"""
    My name is \(firstName). I'm \(age) years old. I'm curretnly studying at \(placeOfStudy). I'm also a sportsman in sport shooting. My hobbies are: \(hobby.joined(separator: ", ")) and my lucky number is \(favoriteNumber).
"""

print(myLifeStory)

let futureGoals =
"""
    To become a successful person with freedon of choice.
"""
                    
myLifeStory += " \(futureGoals)"

print(myLifeStory)
