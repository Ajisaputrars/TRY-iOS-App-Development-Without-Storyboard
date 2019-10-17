//
//  StudentCell.swift
//  BuildWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 14/10/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class StudentCell: UITableViewCell {
    
    let cellImageView: UIImageView = {
        let image = UIImageView(image: UIImage(named: "patrick"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.font = label.font.withSize(12)
        label.text = "Name Sample"
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 3
        label.font = label.font.withSize(11)
        label.text = "Tulisan ini hanyalah sebuah deskripsi sample semata dan jangan pernah dianggap serius. Jadi ya santai saja ya, hehehehehee...."
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupView(){
        self.addSubview(cellImageView)
        self.addSubview(nameLabel)
        self.addSubview(descriptionLabel)
        
        cellImageView.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(16)
            make.top.equalTo(self).offset(8)
            make.bottom.equalTo(self).offset(-8)
            make.size.equalTo(CGSize(width: 50, height: 50)).priority(999)
        }
        
        nameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(8)
            make.left.equalTo(cellImageView.snp.right).offset(8)
            make.right.equalTo(self).offset(-16)
            make.bottom.equalTo(descriptionLabel.snp.top).offset(-8)
        }
        
        descriptionLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(self).offset(-8)
            make.right.equalTo(self).offset(-16)
            make.top.equalTo(nameLabel.snp.bottom).offset(8)
            make.left.equalTo(cellImageView.snp.right).offset(8)
        }
    }
    
    public func setupViewFromStudentObject(student: Student){
        self.nameLabel.text = student.name
        self.descriptionLabel.text = student.description
    }
}
