//
//  DetailsViewController.swift
//  Menu
//
//  Created by gibntn on 22/7/2563 BE.
//  Copyright © 2563 nattanat. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var viewModel: DetailsViewModel!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var price: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        name.text = viewModel.detailData.name
        photo.image = viewModel.detailData.photo
        price.text = "\(viewModel.detailData.price) $"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
