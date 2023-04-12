//
//  Food.swift
//  testSwiftUI
//
//  Created by Piotr Kowalski on 08/04/2023.
//

import Foundation

struct Dish {
    let name: String
    let imageUrl: String
    let price: Double
}

extension Dish {
    
    static func all() -> [Dish] {
        
        return [
            Dish(name: "Salmon", imageUrl: "salmon", price: 25.99),
            Dish(name: "Pasta", imageUrl: "pasta", price: 20.99),
            Dish(name: "Soup", imageUrl: "soup", price: 14.99),
            Dish(name: "Bacon", imageUrl: "bacon", price: 10.99),
            
            Dish(name: "1Salmon", imageUrl: "salmon", price: 25.99),
            Dish(name: "1Pasta", imageUrl: "pasta", price: 20.99),
            Dish(name: "1Soup", imageUrl: "soup", price: 14.99),
            Dish(name: "1Bacon", imageUrl: "bacon", price: 10.99),
            
            Dish(name: "2Salmon", imageUrl: "salmon", price: 25.99),
            Dish(name: "2Pasta", imageUrl: "pasta", price: 20.99),
            Dish(name: "2Soup", imageUrl: "soup", price: 14.99),
            Dish(name: "2Bacon", imageUrl: "bacon", price: 10.99)
        ]
    }
    
    
}
