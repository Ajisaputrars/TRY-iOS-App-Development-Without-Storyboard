//
//  ViewController.swift
//  BuildWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 11/10/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class MainPageController: UIViewController {
    
    var mainPageView = MainPageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = mainPageView
        self.title = "Sample App"
        
        mainPageView.button2.addTarget(self, action: #selector(goToMenu), for: .touchUpInside)
        
        print("Ready")
    }
    
    @objc private func goToMenu(){
        let tableViewPageController = TableViewPageController()
        self.navigationController?.pushViewController(tableViewPageController, animated: true)
    }
}

