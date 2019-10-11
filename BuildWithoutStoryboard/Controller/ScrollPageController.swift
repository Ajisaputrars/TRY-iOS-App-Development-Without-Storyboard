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
        self.scrollPageView = ScrollPageView()
        self.view = scrollPageView
        
//        print("From Override View Did Load")
//        print("Frame width is \(view.frame.width) and height is \(view.frame.height)")

        // Do any additional setup after loading the view.
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
