//
//  ScrollPageController.swift
//  BuildWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 12/10/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class ScrollPageController: UIViewController {
    
    private var scrollPageView: ScrollPageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollPageView = ScrollPageView(frame: view.frame)
        self.view = scrollPageView
    }
}
