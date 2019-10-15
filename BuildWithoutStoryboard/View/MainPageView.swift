//
//  MainPageView.swift
//  BuildWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 11/10/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit
import SnapKit

class MainPageView: UIView {
    
    var button1: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Scroll View", for: .normal)
        return button
    }()
    
    var button2: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Table View", for: .normal)
        return button
    }()
    
    var button3: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Collection View", for: .normal)
        return button
    }()
    
    var button4: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Map View", for: .normal)
        return button
    }()
    
    var button5: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Web View", for: .normal)
        return button
    }()
    
    var button6: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Picker", for: .normal)
        return button
    }()
    
    var imageView1: UIImageView = {
        let anImageView = UIImageView(image: UIImage(named: "patrick"))
        return anImageView
    }()
    
    var imageView2: UIImageView = {
        let anImageView = UIImageView(image: UIImage(named: "patrick"))
        return anImageView
    }()
    
    var imageView3: UIImageView = {
        let anImageView = UIImageView(image: UIImage(named: "patrick"))
        return anImageView
    }()
    
    var imageView4: UIImageView = {
        let anImageView = UIImageView(image: UIImage(named: "patrick"))
        return anImageView
    }()
    
    var imageView5: UIImageView = {
        let anImageView = UIImageView(image: UIImage(named: "patrick"))
        return anImageView
    }()
    
    var imageView6: UIImageView = {
        let anImageView = UIImageView(image: UIImage(named: "patrick"))
        return anImageView
    }()
    
    var label1: UILabel = {
        let aLabel = UILabel()
        aLabel.text = "ScrollView"
        return aLabel
    }()
    
    var label2: UILabel = {
        let aLabel = UILabel()
        aLabel.text = "TableView"
        return aLabel
    }()
    
    var label3: UILabel = {
        let aLabel = UILabel()
        aLabel.text = "CollectionView"
        return aLabel
    }()
    
    var label4: UILabel = {
        let aLabel = UILabel()
        aLabel.text = "MapView"
        return aLabel
    }()
    
    var label5: UILabel = {
        let aLabel = UILabel()
        aLabel.text = "WebView"
        return aLabel
    }()
    
    var label6: UILabel = {
        let aLabel = UILabel()
        aLabel.text = "Picker"
        return aLabel
    }()
    
    lazy var stackViewMenu1: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [imageView1, button1])
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var stackViewMenu2: UIStackView = {
            let stackView = UIStackView(arrangedSubviews: [imageView2, button2])
            stackView.alignment = .center
            stackView.distribution = .fill
            stackView.axis = .vertical
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
        }()
    
    lazy var stackViewMenu3: UIStackView = {
            let stackView = UIStackView(arrangedSubviews: [imageView3, button3])
            stackView.alignment = .center
            stackView.distribution = .fill
            stackView.axis = .vertical
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
        }()
    
    lazy var stackViewMenu4: UIStackView = {
            let stackView = UIStackView(arrangedSubviews: [imageView4, button4])
            stackView.alignment = .center
            stackView.distribution = .fill
            stackView.axis = .vertical
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
        }()
    
    lazy var stackViewMenu5: UIStackView = {
            let stackView = UIStackView(arrangedSubviews: [imageView5, button5])
            stackView.alignment = .center
            stackView.distribution = .fill
            stackView.axis = .vertical
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
        }()
    
    lazy var stackViewMenu6: UIStackView = {
            let stackView = UIStackView(arrangedSubviews: [imageView6, button6])
            stackView.alignment = .center
            stackView.distribution = .fill
            stackView.axis = .vertical
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
        }()
    
    lazy var stackView1: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [stackViewMenu1, stackViewMenu2])
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var stackView2: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [stackViewMenu3, stackViewMenu4])
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var stackView3: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [stackViewMenu5, stackViewMenu6])
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var mainStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [stackView1, stackView2, stackView3])
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private func setupMainPageView(){
        self.backgroundColor = .white
        self.addSubview(mainStackView)
        
        mainStackView.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(32)
            make.bottom.equalTo(self).offset(-32)
            make.left.equalTo(self).offset(32)
            make.right.equalTo(self).offset(-32)
        }
        
        label1.snp.makeConstraints { (make) in
            make.height.equalTo(20)
        }
        
        label2.snp.makeConstraints { (make) in
            make.height.equalTo(20)
        }
        
        label3.snp.makeConstraints { (make) in
            make.height.equalTo(20)
        }
        
        label4.snp.makeConstraints { (make) in
            make.height.equalTo(20)
        }
        
        label5.snp.makeConstraints { (make) in
            make.height.equalTo(20)
        }
        
        label6.snp.makeConstraints { (make) in
            make.height.equalTo(20)
        }
        
        button1.snp.makeConstraints { (make) in
            make.height.equalTo(20)
        }
        
        button2.snp.makeConstraints { (make) in
            make.height.equalTo(20)
        }
        
        button3.snp.makeConstraints { (make) in
            make.height.equalTo(20)
        }
        
        button4.snp.makeConstraints { (make) in
            make.height.equalTo(20)
        }
        
        button5.snp.makeConstraints { (make) in
            make.height.equalTo(20)
        }
        
        button6.snp.makeConstraints { (make) in
            make.height.equalTo(20)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupMainPageView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
