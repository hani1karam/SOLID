//
//  SRP.swift
//  SOLIDPrinciples
//
//  Created by Hany Karam on 20/02/2023.
//

import UIKit

// MARK: - SRP => Single Responsibility Principle

// MARK: - Protocols
protocol Drivable {
    func accelerate()
    func brake()
    func trunLeft()
    func trunRight()
}
protocol Maintainable {
    func addFuel()
    func changeOil()
    func rotateTires()
}
protocol Comfortable {
    func turnOnAC()
    func playCD()
}
class Driving{
    func accelerate(){
        // here code
    }
    func brake(){
        // here code
    }
    func trunLeft(){
        // here code
    }
    func trunRight(){
        // here code
    }
}
// MARK: - Class

class Maintainace {
    func addFuel(){
        // here code
    }
    func changeOil(){
        // here code
    }
    func rotateTires(){
        // here code
    }
}
class Comfortaince{
    func turnOnAC(){
        // here code
    }
    func playCD(){
        // here code
    }
}



class Car: Drivable,Maintainable,Comfortable {
    var driving = Driving()
    var maintainace = Maintainace()
    var comfortaince = Comfortaince()
    
    func accelerate() {
        driving.accelerate()
        
    }
    
    func brake() {
        driving.brake()
    }
    
    func trunLeft() {
        driving.trunLeft()
        
    }
    
    func trunRight() {
        driving.trunRight()
    }
    
    func addFuel() {
        maintainace.addFuel()
    }
    
    func changeOil() {
        maintainace.changeOil()
    }
    
    func rotateTires() {
        maintainace.rotateTires()
    }
    
    func turnOnAC() {
        comfortaince.turnOnAC()
    }
    
    func playCD() {
        comfortaince.playCD()
    }
    
}

class ViewController:UIViewController{
    var car:Car = Car()
    override func viewDidLoad() {
        car.playCD()
        car.turnOnAC()
        car.rotateTires()
    }
}
