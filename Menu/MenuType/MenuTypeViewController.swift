//
//  ViewController.swift
//  Menu
//
//  Created by gibntn on 21/7/2563 BE.
//  Copyright © 2563 nattanat. All rights reserved.
//

import UIKit

class MenuTypeViewController: UIViewController {

    let viewModel: MenuTypeViewModel = .init()
    
    @IBOutlet weak var foodButton: UIButton!
    @IBOutlet weak var drinkButton: UIButton!
    @IBOutlet weak var dessertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? MenuListTableViewController else {
            return
        }
        
        var data = [Eatable]()
        
        switch segue.identifier {
        case "FoodId":
            data = viewModel.getMenuList(type: "food")
        case "DrinkId":
            data = viewModel.getMenuList(type: "drink")
        case "DessertId":
            data = viewModel.getMenuList(type: "dessert")
        default:
            data = []
        }
        
        destinationVC.viewModel.menuData = data
        
    }
}
