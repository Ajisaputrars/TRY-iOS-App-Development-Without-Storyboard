//
//  WebViewPageController.swift
//  BuildWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 14/10/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class WebViewPageController: UIViewController {
    
    var webView: WebViewPageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WebViewPageView()
        self.view = webView
        
        webView.webView.load(URLRequest(url: URL(string: "http://google.com")!))
        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        webView.webView.stopLoading()
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
