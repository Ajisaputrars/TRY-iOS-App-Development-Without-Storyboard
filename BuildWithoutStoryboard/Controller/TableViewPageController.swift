//
//  TableViewPageController.swift
//  BuildWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 12/10/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class TableViewPageController: UIViewController {
    
    private var tableViewPageView: TableViewPageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableViewPageView = TableViewPageView()
        self.view = tableViewPageView
        
    }
}
