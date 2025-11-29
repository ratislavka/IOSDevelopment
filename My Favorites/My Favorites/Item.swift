//
//  Item.swift
//  My Favorites
//
//  Created by Ratislav Ovchinnikov on 14.11.2025.
//


import UIKit

struct Item {
    let image: UIImage
    let title: String
    let subtitle: String
    let review: String
}

struct FavoritesData {
    let section: String
    let items: [Item]
}

let data: [FavoritesData] = [
    FavoritesData(section: "Favorite Movies", items: [
        Item(
            image: .ironMan,
            title: "Iron Man",
            subtitle: "Jon Favreau, 2008",
            review: "A revolutionary superhero film that launched the MCU."
        ),
        Item(
            image: .rush,
            title: "Rush",
            subtitle: "Ron Howard, 2013",
            review: "An intense rivalry drama that captures the thrilling world of Formula 1 racing. "
        ),
        Item(
            image: .pirates,
            title: "Pirates of the Caribbean: The Curse of the Black Pearl",
            subtitle: "Gore Verbinski, 2003",
            review: "A swashbuckling adventure that perfectly balances humor, action, and fantasy."
        ),
        Item(
            image: .starWars,
            title: "Star Wars: Return of the Jedi",
            subtitle: "Richard Marquardt, 1983",
            review: "Epic battles, emotional character arcs, and the iconic redemption of Darth Vader create a satisfying ending."
        ),
        Item(
            image: .lotr3,
            title: "The Lord of the Rings: The Return of the King",
            subtitle: "Peter Jackson, 2003",
            review: "An absolute masterpiece that concludes the epic trilogy magnificently."
        ),
    ]),
    
    FavoritesData(section: "Favorite Books", items: [
        Item(
            image: .hailMary,
            title: "Project Hail Mary",
            subtitle: "Andy Weir, 2021",
            review: "A thrilling sci-fi adventure combining hard science with humor and heart."
        ),
        Item(
            image: .seaOfStars,
            title: "To sleep in a Sea of Stars",
            subtitle: "Lara Leff, 2024",
            review: "A captivating tale that weaves mystery and wonder throughout. "
        ),
        Item(
            image: .harryPotter,
            title: "Harry Potter",
            subtitle: "J.K. Rowling, 1997-2007",
            review: "A cultural phenomenon that defined a generation of readers."
        ),
        Item(
            image: ._11_22_63,
            title: "11.22.63",
            subtitle: "Stephen King, 2011",
            review: "King's masterwork combining time travel with historical fiction. "
        ),
        Item(
            image: .christine,
            title: "Christine",
            subtitle: "Stephen King, 1974",
            review: "King's debut novel remains a terrifying and tragic masterpiece."
        ),
    ]),
    
    FavoritesData(section: "Favorite Music", items: [
        Item(
            image: .theChampions,
            title: "We Are the Champions",
            subtitle: "Queen, 1977",
            review: "Freddie Mercury's powerful vocals and the band's instrumental prowess create an iconic celebration of victory that never fails to inspire."
        ),
        Item(
            image: .countingStars,
            title: "Counting Stars",
            subtitle: "OneRepublic, 2013",
            review: "An uplifting and catchy pop anthem with meaningful lyrics about ambition and determination."
        ),
        Item(
            image: .talks,
            title: "Everybody Talks",
            subtitle: "Neon Trees, 2010",
            review: "A high-energy indie rock track with infectious energy and clever lyrics. "
        ),
        Item(
            image: .blueSky,
            title: "Mr. Blue Sky",
            subtitle: "Weezer",
            review: "An absolutely joyful and uplifting composition that radiates positivity. "
        ),
        Item(
            image: .yellow,
            title: "Yellow",
            subtitle: "Coldplay, 2000",
            review: "A beautifully emotional and haunting ballad showcasing Coldplay's melodic genius. "
        ),
    ]),
    
    FavoritesData(section: "Favorite University Courses", items: [
        Item(
            image: .swift,
            title: "iOS Development",
            subtitle: "Mobile Programming",
            review: "Learning to build iOS applications has been incredibly rewarding. Mastering UIKit and creating beautiful interfaces teach both technical and design skills essential for modern app development."
        ),
        Item(
            image: .oop,
            title: "Object-Oriented Programming",
            subtitle: "Core Programming Paradigm",
            review: "OOP fundamentals are essential for scalable software design. Understanding inheritance, polymorphism, and abstraction provides the foundation for writing maintainable code across languages."
        ),
        Item(
            image: .softeng,
            title: "Software Engineering",
            subtitle: "Software Development Principles",
            review: "A comprehensive course covering the entire software development lifecycle. Teaches how to build professional, production-ready applications from requirements to deployment and maintenance."
        ),
        Item(
            image: .webdev,
            title: "Web Development",
            subtitle: "Front-end & Back-end Development",
            review: "A practical exploration of building modern web applications. Learning HTML, CSS, JavaScript provides valuable skills for creating responsive and interactive web experiences."
        ),
        Item(
            image: .dsa,
            title: "Data Structures & Algorithms",
            subtitle: "Core Computer Science",
            review: "The foundation of efficient programming. Understanding data structures and algorithm design teaches crucial problem-solving skills essential for becoming a skilled software engineer."
        ),
    ]),
]
