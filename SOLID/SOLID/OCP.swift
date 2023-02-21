//
//  OCP.swift
//  SOLIDPrinciples
//
//  Created by Hany Karam on 20/02/2023.
//

import Foundation
// MARK: - SRP => OPen Close Principle
protocol PrintProtcol{
    func printDetailes() -> String
}

class student:PrintProtcol{
    let name:String
    let id:Int
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
    func printDetailes() -> String {
        return "I 'm \(name) and my id is \(id)"
    }
}

class Course:PrintProtcol{
    let name:String
    init(name: String) {
        self.name = name
    }
    func printDetailes() -> String {
        return "I 'm \(name)"
    }
}

class Logger {
    func printData(){
        let objs:[PrintProtcol] = [
            student(name: "hani", id: 24),
            Course(name: "swift")
        ]
        print(objs)
    }
}
