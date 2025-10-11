//
//  Address.swift
//  
//
//  Created by Ratislav Ovchinnikov on 11.10.2025.
//

struct Address {
    let country: String
    let city: String
    let zipCode: String
    let street: String
    
    var formattedAddress: String {
            """
            Country: \(country)
            City: \(city)
            Zip-Code: \(zipCode)
            Street: \(street)
            """
    }
}
