//
//  MenuTypeViewModel.swift
//  Menu
//
//  Created by gibntn on 21/7/2563 BE.
//  Copyright © 2563 nattanat. All rights reserved.
//

import UIKit
struct MenuTypeViewModel {
    
    public func getMenuList(type:String) -> [Eatable] {
        switch type {
        case "food":
            return foods
        case "drink":
            return drinks
        case "dessert":
            return desserts
        default:
            return []
        }
    }
    
    let foods = [
        MenuModels.Food(name: "Food 1", photo: UIImage(named: "food1"), price: 100),
        MenuModels.Food(name: "Food 2", photo: UIImage(named: "food2"), price: 200)
                ]
    let drinks = [
        MenuModels.Drink(name: "Drink 1", photo: UIImage(named: "drink1"), price: 50),
        MenuModels.Drink(name: "Drink 2", photo: UIImage(named: "drink2"), price: 70)
                ]
    let desserts = [
        MenuModels.Dessert(name: "Dessert 1", photo: UIImage(named: "dessert1"), price: 150),
        MenuModels.Dessert(name: "Dessert 2", photo: UIImage(named: "dessert2"), price: 250)
                ]
}
