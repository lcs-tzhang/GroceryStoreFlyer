
//  Flyer.swift
//  GroceryStoreFlyer
//
//  Created by xinyu zhang on 2025-02-03.
//

import Foundation
struct Flyer {
    let departments: [Department]
}
 
struct Department: Identifiable {
    let id = UUID()
    let name: String
    let items: [FoodItem]
}
 
struct FoodItem: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: Double
}

let thisWeeksFlyer = Flyer(
    
    departments: [
        
        Department(
            name: "Butcher's Best",
            items: [
                FoodItem(
                    name: "Sirloin Tip Oven Roasts",
                    image: "sirloin-tips",
                    price: 19.99
                ),
                FoodItem(
                    name: "Porkloin Back Ribs",
                    image: "porkloin-back-ribs",
                    price: 14.99
                ),
            ]
        ),
 
        Department(
            name: "Seafood",
            items: [
                FoodItem(
                    name: "Wild Pacific Halibut Fillets",
                    image: "wild-pacific-halibut-fillets",
                    price: 24.99
                ),
                FoodItem(
                    name: "Wild Sockeye Salmon Fillets",
                    image: "wild-sockeye-salmon-fillets",
                    price: 22.99
                ),
                FoodItem(
                    name: "Clam Chowder",
                    image: "clam-chowder",
                    price: 9.99
                ),
            ]
        ),
        
        
    ]
)
