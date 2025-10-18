//
//  Address.swift
//  
//
//  Created by Ratislav Ovchinnikov on 11.10.2025.
//

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
