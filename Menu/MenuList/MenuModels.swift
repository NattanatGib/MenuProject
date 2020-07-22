//
//  MenuModels.swift
//  Menu
//
//  Created by gibntn on 21/7/2563 BE.
//  Copyright © 2563 nattanat. All rights reserved.
//

import UIKit

protocol Eatable {
    var name: String { get }
    var photo: UIImage? { get }
    var price: Double { get }
}

struct MenuModels {
    struct Food: Eatable {
        var name: String
        var photo: UIImage?
        var price: Double
    }
    struct Drink: Eatable {
        var name: String
        var photo: UIImage?
        var price: Double
    }
    struct Dessert: Eatable {
        var name: String
        var photo: UIImage?
        var price: Double
    }
}
