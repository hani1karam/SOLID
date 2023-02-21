//
//  DIP.swift
//  SOLIDPrinciples
//
//  Created by Hany Karam on 20/02/2023.
//

import Foundation
//High Level Module
class HighLevel{
    var ass:LowLevelProtocol?
    
}

protocol LowLevelProtocol {
    func getUser()
}


class LowLevel:LowLevelProtocol{
    func getUser(){

    }
}

