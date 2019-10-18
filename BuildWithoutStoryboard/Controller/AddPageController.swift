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
    
    var keyboardHeight: CGFloat!
    
    var activeTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View Did Load")

        addPageView = AddPageView()
        self.view = addPageView
        self.view.backgroundColor = .white
        
        addPageView.nameTextField.delegate = self
        addPageView.infoTextField.delegate = self
        addPageView.descriptionTextField.delegate = self
        addPageView.sampleTextField.delegate = self
        
        addPageView.saveButton.addTarget(self, action: #selector(addTapped), for: .touchUpInside)

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Cancel", style: .done, target: self, action: #selector(cancelTapped))
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc private func addTapped(){
        let student = Student(name: addPageView.nameTextField.text, description: addPageView.descriptionTextField.text, info: addPageView.infoTextField.text)
        self.delegate?.savedStudent(student: student)

        self.dismiss(animated: true, completion: nil)
    }
    
    @objc private func cancelTapped(){
        self.dismiss(animated: true, completion: nil)
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        self.activeTextField = textField
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        self.activeTextField = nil
        return true
    }
    
    @objc private func keyboardWillChange(notification: Notification){
        guard let keyboardRect = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
            return
        }
        
        if notification.name == UIResponder.keyboardWillShowNotification || notification.name == UIResponder.keyboardWillChangeFrameNotification {
            
            let shouldUp = (activeTextField.frame.origin.y - keyboardRect.height ) - activeTextField.frame.height - 30
            
            if shouldUp >= 0 {
                view.bounds.origin.y = shouldUp
            }
            self.keyboardHeight = -keyboardRect.height
            
        } else {
            view.bounds.origin.y = 0
        }
    }
}
