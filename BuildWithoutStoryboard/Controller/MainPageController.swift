//
//  ViewController.swift
//  BuildWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 11/10/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class MainPageController: UIViewController {
    
    var mainPageView: MainPageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        mainPageView = MainPageView(frame: self.view.frame)
        self.view = mainPageView
        
        self.title = "Sample App"
        
        mainPageView.button1.addTarget(self, action: #selector(goToScrollViewPage), for: .touchUpInside)
        
        mainPageView.button2.addTarget(self, action: #selector(goToTableViewPage), for: .touchUpInside)
        
        mainPageView.button5.addTarget(self, action: #selector(goToWebViewPage), for: .touchUpInside)
        
        print("Ready")
    }
    
    @objc private func goToTableViewPage(){
        let tableViewPageController = TableViewPageController()
        self.navigationController?.pushViewController(tableViewPageController, animated: true)
    }
    
    @objc private func goToScrollViewPage(){
        let scrollViewPageController = ScrollPageController()
        self.navigationController?.pushViewController(scrollViewPageController, animated: true)
    }
    
    @objc private func goToWebViewPage(){
        let webViewPageController = WebViewPageController()
        self.navigationController?.pushViewController(webViewPageController, animated: true)
    }
}

