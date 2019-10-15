//
//  TableViewPageView.swift
//  BuildWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 12/10/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class TableViewPageView: UIView {
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(StudentCell.self, forCellReuseIdentifier: "Student")
        return tableView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .blue
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupView(){
        self.addSubview(tableView)
                
        tableView.snp.makeConstraints { (make) in
            make.top.bottom.left.right.equalTo(self)
        }
    }
}
