//
//  MenuListTableViewController.swift
//  Menu
//
//  Created by gibntn on 21/7/2563 BE.
//  Copyright © 2563 nattanat. All rights reserved.
//

import UIKit

class MenuListTableViewController: UITableViewController {
    
    //MARK: Properties
    public var viewModel = MenuListTableViewModel()
    var router = MenuListTableRouter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        router.viewController = self
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
//
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.menuData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Either create a new cell, or reuse an existing one
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuListCell", for: indexPath)
        
        //Check to make sure we have data for this row
        if indexPath.row >= viewModel.menuData.count {
            return UITableViewCell()
        }
        
        if let data = viewModel.menuData[indexPath.row] as? MenuModels.Food {
            cell.textLabel?.text = data.name
            cell.imageView?.image = data.photo
            cell.detailTextLabel?.text = "\(data.price)"
        } else if let data = viewModel.menuData[indexPath.row] as? MenuModels.Drink {
            cell.textLabel?.text = data.name
            cell.imageView?.image = data.photo
            cell.detailTextLabel?.text = "\(data.price)"
        } else if let data = viewModel.menuData[indexPath.row] as? MenuModels.Dessert {
            cell.textLabel?.text = data.name
            cell.imageView?.image = data.photo
            cell.detailTextLabel?.text = "\(data.price)"
        }
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        router.routeToDetails(model: viewModel.menuData[indexPath.row])
    }
    
}
