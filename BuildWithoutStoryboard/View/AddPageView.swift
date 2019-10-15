//
//  AddPageView.swift
//  BuildWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 14/10/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class AddPageView: UIView {
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter the name"
        textField.borderStyle = .roundedRect
        
        return textField
    }()
    
    let sampleTextField: UITextField = {
           let textField = UITextField()
           textField.placeholder = "Sample"
           textField.borderStyle = .roundedRect
           
           return textField
       }()
    
    let descriptionTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter the description"
        textField.borderStyle = .roundedRect
        
        return textField
    }()
    
    let infoTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter the info"
        textField.borderStyle = .roundedRect
        
        return textField
    }()
    
    let saveButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Save", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupView(){
        self.addSubview(nameTextField)
        self.addSubview(descriptionTextField)
        self.addSubview(infoTextField)
        self.addSubview(saveButton)
        self.addSubview(sampleTextField)
        
        nameTextField.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(16)
            make.left.equalTo(self).offset(16)
            make.right.equalTo(self).offset(-16)
            make.bottom.equalTo(descriptionTextField.snp.top).offset(-16)
        }

        descriptionTextField.snp.makeConstraints { (make) in
            make.top.equalTo(nameTextField.snp.bottom).offset(16)
            make.left.equalTo(self).offset(16)
            make.right.equalTo(self).offset(-16)
            make.bottom.equalTo(infoTextField.snp.top).offset(-16)
        }

        infoTextField.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(16)
            make.right.equalTo(self).offset(-16)
            make.top.equalTo(descriptionTextField.snp.bottom).offset(16)
        }
        
        saveButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(self).offset(-16)
            make.left.equalTo(self).offset(16)
            make.right.equalTo(self).offset(-16)
        }
        
        sampleTextField.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(16)
            make.right.equalTo(self).offset(-16)
            make.bottom.equalTo(saveButton.snp.top).offset(-8)
        }
    }
}
