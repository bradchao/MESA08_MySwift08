//
//  MyClasses.swift
//  MySwift08
//
//  Created by user22 on 2017/9/14.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

class Super1 {
    init() {
        print("Super1:init()")
    }
}
class Sub11 : Super1 {
    // 編譯時期已經加入 Super1.init()
}
class Sub12 : Super1 {
    override init() {
        print("Sub2:init()")
        // 隱含呼叫 Super1.init() before return
    }
}
class Sub13 : Super1 {
    init(_ :Int) {
        
    }
}
class Sub131 : Sub12 {
    override init() {
        print("Sub31:init()")
    }
}
//--------------------------
class Super2 {
    init() {
        print("Super2:init()")
    }
    init(_:Int) {
        print("Super2:init(Int)")
    }
}
class Sub21 : Super2 {
    
}
class Sub22 : Super2 {
    override init() {
        print("Sub22:init()")
        super.init()    // must be call init() before return
    }
    override init(_ x: Int) {
        print("Sub22:init(x:Int)")
        super.init(2)
    }
    init(_ x : String){
        super.init()
    }
}

class Super3 {
    init() {
        print("Super3:init()")
    }
    func m1(){
        print("Super3:m1()")
    }
}
class Sub31 : Super3 {
    override init() {
        print("Sub31:init()")
    }
    convenience init(_ : Int) {
        print("Sub31:init(Int)")
        self.init()
        //super.init() ==> 已經存在 self.init(), 就不可以再呼叫 sper.init()
    }
    override func m1() {
        print("Sub31:m1()")
    }
}
class Sub32 : Super3 {
    override func m1() {
        print("Sub32:m1()")
    }
}
class Sub33 : Super3 {
    func m2(){
        print("Sub32:m2()")
    }
}

func doM1(obj:Super3){
    obj.m1()
}
func doM1(obj2:Sub33){
    obj2.m1()
    obj2.m2()
}








