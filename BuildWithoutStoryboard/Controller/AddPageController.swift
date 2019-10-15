//
//  AddPageController.swift
//  BuildWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 14/10/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class AddPageController: UIViewController, UITextFieldDelegate {
    
    var addPageView: AddPageView!
    
    weak var delegate: SaveStudentDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        addPageView = AddPageView(frame: view.frame)
        self.view = addPageView
        self.view.backgroundColor = .white
        
        addPageView.nameTextField.delegate = self
        addPageView.infoTextField.delegate = self
        addPageView.descriptionTextField.delegate = self
        
        addPageView.saveButton.addTarget(self, action: #selector(addTapped), for: .touchUpInside)

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Cancel", style: .done, target: self, action: #selector(cancelTapped))
    }
    
    @objc private func addTapped(){
        let student = Student(name: addPageView.nameTextField.text, description: addPageView.descriptionTextField.text, info: addPageView.infoTextField.text)
        self.delegate?.savedStudent(student: student)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc private func cancelTapped(){
        self.dismiss(animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}
