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
        
        return view
    }()
    
    let view2: UIView = {
        let view = UIView()
        
        return view
    }()
    
    let containerView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero)
        scrollView.backgroundColor = .gray
                
        return scrollView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupView(){
        self.backgroundColor = .red
    }
}
