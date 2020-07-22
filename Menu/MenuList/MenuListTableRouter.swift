//
//  MenuListTableRouter.swift
//  Menu
//
//  Created by gibntn on 22/7/2563 BE.
//  Copyright © 2563 nattanat. All rights reserved.
//

import UIKit

class MenuListTableRouter  {
    weak var viewController: MenuListTableViewController?
    
    func routeToDetails(model: Eatable) {
        let destinationViewModel = DetailsViewModel(detailData: model)
        let destination = DetailsViewController(nibName: "DetailsViewController", bundle: nil)
        destination.viewModel = destinationViewModel
        viewController?.navigationController?.pushViewController(destination, animated: true)
    }
}
