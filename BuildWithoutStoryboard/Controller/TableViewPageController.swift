//
//  TableViewPageController.swift
//  BuildWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 12/10/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class TableViewPageController: UIViewController, UITableViewDelegate, UITableViewDataSource, SaveStudentDelegate {
    
    private var tableViewPageView: TableViewPageView!
    private var students: [Student]!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableViewPageView = TableViewPageView()
        self.view = tableViewPageView
        
        self.tableViewPageView.tableView.delegate = self
        self.tableViewPageView.tableView.dataSource = self
        
        students = StudentData.getStudentData()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Student", for: indexPath) as! StudentCell
        cell.setupViewFromStudentObject(student: self.students[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(students[indexPath.row].name!)
    }
    
    @objc private func addTapped(){
        let controller = AddPageController()
        let navigationController = UINavigationController(rootViewController: controller)
        controller.delegate = self
        navigationController.modalPresentationStyle = .fullScreen
        present(navigationController, animated: true, completion: nil)
    }
    
    func savedStudent(student: Student) {
        self.students.append(student)
        self.tableViewPageView.tableView.reloadData()
    }
}
