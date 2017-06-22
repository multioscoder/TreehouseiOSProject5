//
//  Access.swift
//  Project 4
//
//  Created by Mohamed Al Mohannadi on 6/8/17.
//  Copyright © 2017 Mohamed Al Mohannadi. All rights reserved.
//

// Enums to organize the entrant types, types of discounts and privilegs

// MARK: - Feel free to change any details in the "directory" array. The entire app will automatically update on those new modifications but don't create or delete Entrant Types rather only modifying their privileges. If you're going to change an entrant from having no discount priviledges to discount privlidges. Make sure you indicate how much discount in "discountPercentForFood" and "discountPercentForMerchandise." Simirlaly, if you're going to change an entrant from having discount privlidges to no discount privlidges, make sure you its nil for the "discontPercentForFood" and "discountPercentForMerchendise." Feel free to add or remove accessible area for any entrant in the directory array, but be sure to not make any spelling errors and words that don't start with a capital. Unfortunatly an enum for access areas cannot be made as constructing further logic with the enum seemed impossible.


enum EntrantType {
    case adult
    case child
    case senior
    case vip
    case food
    case ride
    case maintenance
    case contract
    case manager
    case vendor
    case season
}


enum Discount {
    case food
    case merchandise
}

struct Privileges {
    var entrant: EntrantType
    var canAccessAllRides: Bool
    var isAbleToSkipLines: Bool
    var accessibility: [String]
    var discount: Bool
    var discountPercentForFood: Int?
    var discountPercentForMerchandise: Int?
    var projectNumber: Int?
    var company: String?
}



var directory: [Privileges] = [

    Privileges(entrant: EntrantType.adult, canAccessAllRides: true, isAbleToSkipLines: false, accessibility: ["Amusement"], discount: false, discountPercentForFood: nil, discountPercentForMerchandise: nil, projectNumber: nil, company: nil),
    
    Privileges(entrant: EntrantType.child, canAccessAllRides: true, isAbleToSkipLines: false, accessibility: ["Amusement"], discount: false, discountPercentForFood: nil, discountPercentForMerchandise: nil, projectNumber: nil, company: nil),

    Privileges(entrant: EntrantType.senior, canAccessAllRides: true, isAbleToSkipLines: true, accessibility: ["Amusement"], discount: true, discountPercentForFood: 10, discountPercentForMerchandise: 10, projectNumber: nil, company: nil),
    
    Privileges(entrant: EntrantType.vip, canAccessAllRides: true, isAbleToSkipLines: true, accessibility: ["Amusement"], discount: true, discountPercentForFood: 10, discountPercentForMerchandise: 20, projectNumber: nil, company: nil),
    
    Privileges(entrant: EntrantType.food, canAccessAllRides: true, isAbleToSkipLines: false, accessibility: ["Amusement", "Kitchen"], discount: true, discountPercentForFood: 15, discountPercentForMerchandise: 25, projectNumber: nil, company: nil),
    
    Privileges(entrant: EntrantType.ride, canAccessAllRides: true, isAbleToSkipLines: false, accessibility: ["Amusement", "Ride Control"], discount: true, discountPercentForFood: 15, discountPercentForMerchandise: 25, projectNumber: nil, company: nil),
    
    Privileges(entrant: EntrantType.maintenance, canAccessAllRides: true, isAbleToSkipLines: false, accessibility: ["Amusement", "Kitchen", "Maintenance", "Ride Control"], discount: true, discountPercentForFood: 15, discountPercentForMerchandise: 25, projectNumber: nil, company: nil),
    
    Privileges(entrant: EntrantType.manager, canAccessAllRides: true, isAbleToSkipLines: false, accessibility: ["Amusement", "Kitchen", "Maintenance", "Ride Control", "Office Areas"], discount: true, discountPercentForFood: 25, discountPercentForMerchandise: 25, projectNumber: nil, company: nil),
    
    Privileges(entrant: EntrantType.season, canAccessAllRides: true, isAbleToSkipLines: true, accessibility: ["Amusement"], discount: true, discountPercentForFood: 10, discountPercentForMerchandise: 20, projectNumber: nil, company: nil),
    
    Privileges(entrant: .contract, canAccessAllRides: false, isAbleToSkipLines: false, accessibility: ["Amusement", "Ride Control"], discount: false, discountPercentForFood: nil, discountPercentForMerchandise: nil, projectNumber: 1001, company: nil),
    
    Privileges(entrant: .contract, canAccessAllRides: false, isAbleToSkipLines: false, accessibility: ["Amusement", "Ride Control", "Maintenance"], discount: false, discountPercentForFood: nil, discountPercentForMerchandise: nil, projectNumber: 1002, company: nil),
    
    Privileges(entrant: .contract, canAccessAllRides: false, isAbleToSkipLines: false, accessibility: ["Amusement", "Kitchen", "Maintenance", "Ride Control", "Office Areas"], discount: false, discountPercentForFood: nil, discountPercentForMerchandise: nil, projectNumber: 1003, company: nil),
    
    Privileges(entrant: .contract, canAccessAllRides: false, isAbleToSkipLines: false, accessibility: ["Office Areas"], discount: false, discountPercentForFood: nil, discountPercentForMerchandise: nil, projectNumber: 2001, company: nil),
    
    Privileges(entrant: .contract, canAccessAllRides: false, isAbleToSkipLines: false, accessibility: ["Kitchen", "Maintenance"], discount: false, discountPercentForFood: nil, discountPercentForMerchandise: nil, projectNumber: 2002, company: nil),
    
    Privileges(entrant: .vendor, canAccessAllRides: false, isAbleToSkipLines: false, accessibility: ["Kitchen"], discount: false, discountPercentForFood: nil, discountPercentForMerchandise: nil, projectNumber: nil, company: "Acme"),
    
    Privileges(entrant: .vendor, canAccessAllRides: false, isAbleToSkipLines: false, accessibility: ["Amusement", "Ride Control", "Kitchen"], discount: false, discountPercentForFood: nil, discountPercentForMerchandise: nil, projectNumber: nil, company: "Orkin"),
    
    Privileges(entrant: .vendor, canAccessAllRides: false, isAbleToSkipLines: false, accessibility: ["Maintenance", "Office Areas"], discount: false, discountPercentForFood: nil, discountPercentForMerchandise: nil, projectNumber: nil, company: "Fedex"),
    
    Privileges(entrant: .vendor, canAccessAllRides: false, isAbleToSkipLines: false, accessibility: ["Amusement", "Kitchen", "Maintenance", "Ride Control", "Office Areas"], discount: false, discountPercentForFood: nil, discountPercentForMerchandise: nil, projectNumber: nil, company: "NW Electrical")
]














