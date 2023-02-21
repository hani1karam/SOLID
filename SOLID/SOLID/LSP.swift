//
//  LSP.swift
//  SOLIDPrinciples
//
//  Created by Hany Karam on 20/02/2023.
//

import Foundation
protocol Polygon{
    var area:Float {get}
}
class Rectangle:Polygon{
    var width:Float = 0
    var length:Float = 0
    internal init(width: Float = 0, length: Float = 0) {
        self.width = width
        self.length = length
    }
    var area:Float{
        return width * length
    }
}
class square:Polygon{
    private let side:Float
    var area: Float{
        return pow(side, 2)
    }
    internal init(side: Float) {
        self.side = side
    }
}
class Client{
    func printArea(of polygon:Polygon){
        print(polygon.area)
    }
    func execute(){
        let rectangle = Rectangle(width: 2,length: 5)
        printArea(of: rectangle)
        
        let sequare = square(side:2)
        printArea(of: sequare)
    }
}
