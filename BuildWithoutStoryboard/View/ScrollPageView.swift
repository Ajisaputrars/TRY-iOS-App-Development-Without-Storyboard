//
//  ScrollPageView.swift
//  BuildWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 12/10/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class ScrollPageView: UIView {
        
    let view1: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        
        return view
    }()
    
    let view2: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        
        return view
    }()
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .green
        scrollView.translatesAutoresizingMaskIntoConstraints = false
                
        return scrollView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupView(frame: CGRect){
        self.addSubview(scrollView)
        scrollView.addSubview(view1)
        scrollView.addSubview(view2)
        
        scrollView.snp.makeConstraints { (make) in
            make.top.bottom.left.right.equalTo(self)
        }

        view1.snp.makeConstraints { (make) in
            make.centerX.equalTo(scrollView)
            make.size.equalTo(CGSize(width: 100, height: 500))
            make.top.equalTo(scrollView).offset(16)
            make.bottom.equalTo(view2.snp.top).offset(-16)
        }

        view2.snp.makeConstraints { (make) in
            make.centerX.equalTo(scrollView)
            make.size.equalTo(CGSize(width: 100, height: 500))
            make.bottom.equalTo(scrollView).offset(-16)
            make.top.equalTo(view1.snp.bottom).offset(16)
        }
    }
}
