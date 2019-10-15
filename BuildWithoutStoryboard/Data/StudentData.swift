//
//  StudentData.swift
//  BuildWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 14/10/19.
//  Copyright © 2019 Aji Saputra Raka Siwi. All rights reserved.
//

import Foundation

class StudentData{
    static func getStudentData() -> [Student]{
        var students = [Student]()
        
        for i in 1 ... 10 {
            let nama = "Sample name \(i)"
            let description = "\(i) This is sample description. Be careful with everything on the Internet because it can be harmful. That's it, and I hope you enjoy"
            let info = "This is the sample info number \(i)"
            
            let student = Student(name: nama, description: description, info: info)
            students.append(student)
        }

        return students
    }
}
