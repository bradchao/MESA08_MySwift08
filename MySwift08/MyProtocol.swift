//
//  MyProtocol.swift
//  MySwift08
//
//  Created by user22 on 2017/9/15.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

// Protocol
protocol Shape {
    func calLength() -> Double
    func calArea() -> Double
}
protocol p1 {
    func p2() -> Void
}

class Triangle: Super3, Shape, p1 {
    var w = 3, h = 4
    func calLength() -> Double{
        return Double(w + w + w)
    }
    func calArea() -> Double {
        return Double(w * h)
    }
    func p2() {
        
    }
    
}
class Circle : Shape {
    var r = 3
    func calLength() -> Double{
        return Double(r * 2) * 3.14
    }
    func calArea() -> Double {
        return Double(r * r) * 3.14
    }
}
func getArea(obj:Shape) -> Double{
    return obj.calArea()
}

