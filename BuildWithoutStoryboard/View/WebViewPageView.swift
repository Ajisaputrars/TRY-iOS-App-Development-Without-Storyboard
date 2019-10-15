//
//  WebViewPageView.swift
//  BuildWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 14/10/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit
import WebKit

class WebViewPageView: UIView {
    
    let webView: WKWebView = {
        let webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.contentMode = .scaleAspectFill
        return webView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupView(){
        self.addSubview(webView)
        
        webView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalTo(self)
            make.top.equalTo(self.safeAreaLayoutGuide)
        }
    }
}
