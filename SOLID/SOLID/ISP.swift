//
//  ISP.swift
//  SOLIDPrinciples
//
//  Created by Hany Karam on 20/02/2023.
//

import Foundation
protocol UITableViewDataSource{
    func getUser(id:Int,onComplet:([String]) -> Void)
}

protocol UITableViewDelegate{
    func getUsers(onComplet:([String]) -> Void)
}

class Impl:UITableViewDataSource,UITableViewDelegate{
    func getUser(id: Int, onComplet: ([String]) -> Void) {
    
    }
    
    func getUsers(onComplet: ([String]) -> Void) {
        
    }
}
