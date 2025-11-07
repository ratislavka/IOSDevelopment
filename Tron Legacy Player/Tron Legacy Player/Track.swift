//
//  Track.swift
//  Tron Legacy Player
//
//  Created by Ratislav Ovchinnikov on 06.11.2025.
//

import UIKit

struct Track {
    let title: String
    let artist: String = "Daft Punk"
    let fileName: String
    let cover: UIImage
    let themeColor: String
}

let tracks = [
    Track(title: "Overture", fileName: "01 Overture", cover: UIImage(named: "cover1")!, themeColor: "Blue"),
    Track(title: "The Grid", fileName: "02 The Grid", cover: UIImage(named: "cover2")!, themeColor: "Blue"),
    Track(title: "The Son of Flynn", fileName: "03 The Son of Flynn", cover: UIImage(named: "cover3")!, themeColor: "Blue"),
    Track(title: "Recognizer", fileName: "04 Recognizer", cover: UIImage(named: "cover4")!, themeColor: "Orange"),
    Track(title: "Armory", fileName: "05 Armory", cover: UIImage(named: "cover5")!, themeColor: "Blue"),
    Track(title: "Arena", fileName: "06 Arena", cover: UIImage(named: "cover6")!, themeColor: "Orange"),
    Track(title: "Rinzler", fileName: "07 Rinzler", cover: UIImage(named: "cover7")!, themeColor: "Orange"),
    Track(title: "The Game Has Changed", fileName: "08 The Game Has Changed", cover: UIImage(named: "cover8")!, themeColor: "Orange"),
    Track(title: "Outlands", fileName: "09 Outlands", cover: UIImage(named: "cover9")!, themeColor: "Orange"),
    Track(title: "Adagio for TRON", fileName: "10 Adagio for TRON", cover: UIImage(named: "cover10")!, themeColor: "Blue"),
    Track(title: "Nocturne", fileName: "11 Nocturne", cover: UIImage(named: "cover1")!, themeColor: "Blue"),
    Track(title: "End of Line", fileName: "12 End of Line", cover: UIImage(named: "cover2")!, themeColor: "Orange"),
    Track(title: "Derezzed", fileName: "13 Derezzed", cover: UIImage(named: "cover3")!, themeColor: "Orange"),
    Track(title: "Fall", fileName: "14 Fall", cover: UIImage(named: "cover4")!, themeColor: "Orange"),
    Track(title: "Solar Sailer", fileName: "15 Solar Sailer", cover: UIImage(named: "cover5")!, themeColor: "Blue"),
    Track(title: "Rectifier", fileName: "16 Rectifier", cover: UIImage(named: "cover6")!, themeColor: "Orange"),
    Track(title: "Disc Wars", fileName: "17 Disc Wars", cover: UIImage(named: "cover7")!, themeColor: "Orange"),
    Track(title: "C.L.U", fileName: "18 C.L.U", cover: UIImage(named: "cover8")!, themeColor: "Orange"),
    Track(title: "Arrival", fileName: "19 Arrival", cover: UIImage(named: "cover9")!, themeColor: "Blue"),
    Track(title: "Flynn Lives", fileName: "20 Flynn Lives", cover: UIImage(named: "cover10")!, themeColor: "Blue"),
    Track(title: "TRON Legacy (End Titles)", fileName: "21 TRON Legacy (End Titles)", cover: UIImage(named: "cover1")!, themeColor: "Orange"),
    Track(title: "Finale", fileName: "22 Finale", cover: UIImage(named: "cover2")!, themeColor: "Orange"),
    Track(title: "Sea of Simulation", fileName: "23 Sea of Simulation", cover: UIImage(named: "cover3")!, themeColor: "Blue"),
    Track(title: "Encom, Pt. II", fileName: "24 Encom, Pt. II", cover: UIImage(named: "cover4")!, themeColor: "Orange"),
    Track(title: "Encom, Pt. I", fileName: "25 Encom, Pt. I", cover: UIImage(named: "cover5")!, themeColor: "Orange"),
    Track(title: "Round One", fileName: "26 Round One", cover: UIImage(named: "cover6")!, themeColor: "Orange"),
    Track(title: "Castor", fileName: "27 Castor", cover: UIImage(named: "cover7")!, themeColor: "Orange"),
    Track(title: "Reflections", fileName: "28 Reflections", cover: UIImage(named: "cover8")!, themeColor: "Blue"),
    Track(title: "Sunrise Prelude", fileName: "29 Sunrise Prelude", cover: UIImage(named: "cover9")!, themeColor: "Blue"),
    Track(title: "Father and Son", fileName: "30 Father and Son", cover: UIImage(named: "cover10")!, themeColor: "Blue"),
    Track(title: "Outlands, Pt. II", fileName: "31 Outlands, Pt. II", cover: UIImage(named: "cover1")!, themeColor: "Blue")
]
