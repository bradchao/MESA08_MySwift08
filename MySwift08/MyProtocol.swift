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
    func calLength() -> Double{
        return 1.2
    }
    func calArea() -> Double {
        return 1.3
    }
    func p2() {
        
    }
    
}
class Circle : Shape {
    func calLength() -> Double{
        return 1.2
    }
    func calArea() -> Double {
        return 1.3
    }
}

