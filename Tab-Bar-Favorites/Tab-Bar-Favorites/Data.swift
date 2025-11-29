    //
    //  Data.swift
    //  Tab-Bar-Favorites
    //
    //  Created by Ratislav Ovchinnikov on 21.11.2025.
    //


import UIKit

struct Item {
    let image: UIImage
    let title: String
    let subtitle: String
    let review: String
    let genre: String
}

struct FavoritesData {
    let section: String
    let items: [Item]
}




let data: [FavoritesData] = [
    FavoritesData(section: "Favorite Movies", items: [
        Item(image: .missionimpossible,
             title: "Mission: Impossible – Fallout",
             subtitle: "Christopher McQuarrie, 2018",
             review:
            """
            This movie is certainly not bad, but it seems to me that with this one, they aimed too high, and didn't know how to go about it. With this, the last part of the legendary mission impossible is more impossible than any previous ones, which makes it have more questionable choices and actions. We see Ethan and his team push absolute limits, and even break the limit of their luck. The whole plan was built on hope that everything will come together.
            """,
             genre: "Action"
        ),
        Item(image: .dunkirk,
             title: "Dunkirk",
             subtitle: "Christopher Nolan, 2017",
             review:
            """
            It is not as confusing as other Cristopher Nolan's works, but it's not the secret of this movie. Spectacular cinematography is.

            All through the film I couldn't help but notice the beautiful shots and scenes, especially the ones on the IMAX. But only in the end I understood why I liked it so much. The sequence with hundreds of boats still gives me goosebumps when I think of it. It's just... beautiful.
            """,
             genre: "War"
        ),
        Item(image: .dontlookup,
             title: "Don't Look Up",
             subtitle: "Adam McKay, 2021",
             review:
            """
            I've watched this movie twice - when it came out, and again a few days ago.

            It still gives me the same thoughts: a parody that feels way too close to reality.

            This movie asks a simple question: If a meteor was about to destroy Earth, what would we, and our leaders do?

            Would we actually save ourselves?
            """,
             genre: "Comedy"
        ),
        Item(
            image: .ironMan,
            title: "Iron Man",
            subtitle: "Jon Favreau, 2008",
            review: "A revolutionary superhero film that launched the MCU.",
            genre: "Superhero"
        ),
        Item(
            image: .rush,
            title: "Rush",
            subtitle: "Ron Howard, 2013",
            review: "An intense rivalry drama that captures the thrilling world of Formula 1 racing. ",
            genre: "Drama"
        ),
        Item(
            image: .pirates,
            title: "Pirates of the Caribbean: The Curse of the Black Pearl",
            subtitle: "Gore Verbinski, 2003",
            review: "A swashbuckling adventure that perfectly balances humor, action, and fantasy.",
            genre: "Adventure"
        ),
        Item(
            image: .starWars,
            title: "Star Wars: Return of the Jedi",
            subtitle: "Richard Marquardt, 1983",
            review: "Epic battles, emotional character arcs, and the iconic redemption of Darth Vader create a satisfying ending.",
            genre: "Sci-Fi"
        ),
        Item(
            image: .lotr3,
            title: "The Lord of the Rings: The Return of the King",
            subtitle: "Peter Jackson, 2003",
            review: "An absolute masterpiece that concludes the epic trilogy magnificently.",
            genre: "Fantasy"
        ),

        Item(image: .interstelar,
             title: "Interstellar",
             subtitle: "Christopher Nolan, 2014",
             review: "A visually stunning and deeply emotional sci-fi epic exploring love, time, and the survival of humanity.",
             genre: "Sci-Fi"
        ),
        Item(image: .formulaone,
             title: "Formula One: The movie",
             subtitle: "Joseph Kosinski",
             review:
            """
             I really liked it. It brought some really interesting and very much needed action and creative strategies that current formula one lacks.
            
            """,
             genre: "Sports"
        ),

    ]),
    
    FavoritesData(section: "Favorite Books", items: [
        Item(
            image: .hailMary,
            title: "Project Hail Mary",
            subtitle: "Andy Weir, 2021",
            review: "A thrilling sci-fi adventure combining hard science with humor and heart.",
            genre: "Sci-Fi"
        ),
        Item(
            image: .seaOfStars,
            title: "To sleep in a Sea of Stars",
            subtitle: "Lara Leff, 2024",
            review: "A captivating tale that weaves mystery and wonder throughout. ",
            genre: "Sci-Fi"
        ),
        Item(
            image: .harryPotter,
            title: "Harry Potter",
            subtitle: "J.K. Rowling, 1997",
            review: "A cultural phenomenon that defined a generation of readers.",
            genre: "Fantasy"
        ),
        Item(
            image: ._11_22_63,
            title: "11.22.63",
            subtitle: "Stephen King, 2011",
            review: "King's masterwork combining time travel with historical fiction. ",
            genre: "Historical Fiction"
        ),
        Item(
            image: .christine,
            title: "Christine",
            subtitle: "Stephen King, 1974",
            review: "King's debut novel remains a terrifying and tragic masterpiece.",
            genre: "Horror"
        ),
        Item(
            image: .metro,
            title: "Metro 2033",
            subtitle: "Dmitry Glukhovsky, 2005",
            review: "A dark and atmospheric post-apocalyptic journey through the Moscow metro, blending survival, philosophy, and suspense.",
            genre: "Post-apocalyptic"
        ),

        Item(
            image: .martian,
            title: "The Martian",
            subtitle: "Andy Weir, 2011",
            review: "A smart, funny, and incredibly engaging survival story about an astronaut stranded on Mars, relying on science and wit to stay alive.",
            genre: "Sci-Fi"
        ),

        Item(
            image: .sherlockhomes,
            title: "Sherlock Holmes",
            subtitle: "Arthur Conan Doyle, 1887",
            review: "Timeless detective stories featuring brilliant deduction, iconic mysteries, and unforgettable characters.",
            genre: "Detective"
        ),

        Item(
            image: .dune,
            title: "Dune",
            subtitle: "Frank Herbert, 1965",
            review: "A monumental sci-fi epic exploring politics, prophecy, ecology, and the destiny of a young heir on a desert planet.",
            genre: "Sci-Fi"
        ),

        Item(
            image: .wizardofOZ,
            title: "The Wizard of Oz",
            subtitle: "L. Frank Baum, 1900",
            review: "A classic fantasy adventure filled with charm, imagination, and timeless themes of courage and friendship.",
            genre: "Fantasy"
        )

    ]),
    
    FavoritesData(section: "Favorite Music", items: [
        Item(
            image: .countingStars,
            title: "Counting Stars",
            subtitle: "OneRepublic, 2013",
            review: "An uplifting and catchy pop anthem with meaningful lyrics about ambition and determination.",
            genre: "Pop"
        ),
        Item(
            image: .talks,
            title: "Everybody Talks",
            subtitle: "Neon Trees, 2010",
            review: "A high-energy indie rock track with infectious energy and clever lyrics. ",
            genre: "Indie Rock"
        ),
        Item(
            image: .blueSky,
            title: "Mr. Blue Sky",
            subtitle: "Weezer",
            review: "An absolutely joyful and uplifting composition that radiates positivity. ",
            genre: "Rock"
        ),
        Item(
            image: .yellow,
            title: "Yellow",
            subtitle: "Coldplay, 2000",
            review: "A beautifully emotional and haunting ballad showcasing Coldplay's melodic genius. ",
            genre: "Alternative"
        ),
        Item(
            image: .theChampions,
            title: "We Are the Champions",
            subtitle: "Queen, 1977",
            review: "Freddie Mercury's iconic song that never fails to impress.",
            genre: "Rock"
        ),
    ]),
    
    FavoritesData(section: "Favorite University Courses", items: [
        Item(
            image: .swift,
            title: "iOS Development",
            subtitle: "Mobile Programming",
            review: "Learning to build iOS applications has been incredibly rewarding. You can clearly see the progress of your work.",
            genre: "Programming"
        ),
        Item(
            image: .oop,
            title: "Object-Oriented Programming",
            subtitle: "Core Programming Paradigm",
            review: "OOP fundamentals are essential for software design. Understanding inheritance, polymorphism, and abstraction provides the foundation of programming.",
            genre: "Programming"
        ),
        Item(
            image: .softeng,
            title: "Software Engineering",
            subtitle: "Software Development Principles",
            review: "A comprehensive course covering the entire software development lifecycle. Teaches how to build professional, production-ready applications from requirements to deployment and maintenance.",
            genre: "Engineering"
        ),
        Item(
            image: .webdev,
            title: "Web Development",
            subtitle: "Front-end & Back-end Development",
            review: "A practical exploration of building modern web applications. Learning HTML, CSS, JavaScript provides valuable skills.",
            genre: "Web"
        ),
        Item(
            image: .dsa,
            title: "Data Structures & Algorithms",
            subtitle: "Core Computer Science",
            review: "The foundation of efficient programming. Understanding data structures and algorithm design teaches crucial problem-solving skills essential for becoming a skilled software engineer.",
            genre: "Computer Science"
        ),
    ]),
]
