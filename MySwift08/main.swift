//
//  main.swift
//  MySwift08
//
//  Created by user22 on 2017/9/14.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

print("Hello, World!")

var s11 = Sub11()
print("-----")
var s12 = Sub12()
print("-----")
var s13 = Sub13(1)
print("-----")
var s131 = Sub131()
print("-----")
var s21 = Sub21(2)
print("-----")
var s31 = Sub31(2)
print("-----")
print(type(of:s31))
if s31 == nil {
    print("OK")
}
print( s31 is Super3 )
print("-----")
var s32 = Sub32()
print( s32 is Super3 )
var s33 = Sub33()
print( s33 is Super3 )
s31.m1()
s32.m1()
s33.m1()
print("-----")
doM1(obj: s31)
doM1(obj: s32)
doM1(obj: s33)
//doM1(obj: s11)
print("-----")
var objSuper3 = Super3()
var objSub31 = Sub31()
var objSub32 = Sub32()
var objSub33 = Sub33()
var obj1 = objSub33 as Super3   // 向上super轉型
print("----->>>>")
obj1.m1()
objSub33.m1()


print(type(of:obj1))
objSub33.m2()
//obj1.m2()
var obj2:Sub33 = obj1 as! Sub33   // 向下Sub !強制轉型
obj2.m2()
print("-----")
print(objSub31 === objSub32)
print(objSub33 === obj1)
print(obj2 === obj1)
print("-----")
//var pbj3 = objSuper3 as! Sub33  // 將Super3物件實體, 向下強制轉型

let pad3g1:iPad3G = iPad3G()
let pad1:iPad = pad3g1     // 自動轉型 sub -> super
let pad3g2:iPad3G = pad1 as! iPad3G
print("-----")
doM1(obj: objSub33)
doSomething(obj: s11)
doSomething(obj: s12)
doSomething(obj: obj1)
//doSomething(obj: 3)
doV2(any: "Brad")
doV2(any: 123)
doV2(any: s11)

var obj4 = Sub33()
obj4.m3()
print("-----")
extension String {
    func m1(){
        print("I am m1()")
    }
    func m2(){
        print("I am m2()")
    }
}

var brad1 = "Brad"
brad1.m1()
brad1.m2()
print("-----")
var shape1:Triangle = Triangle()
var shape2:Circle = Circle()
var shape3:Shape = Triangle()
var shape4:Shape = Circle()
// var shape5:Shape = Shape()
print(shape3 is Shape)
print(shape3 is Triangle)
print(shape3 is Super3)
shape3.calArea()
shape3.calLength()
(shape3 as! Triangle).m1()
print("-----")
print(getArea(obj: shape1))
print(getArea(obj: shape2))
print(getArea(obj: shape3))
print(getArea(obj: shape4))

class Super7 {
    init() {
        
    }
    required init(x:Int){
        print("Super7:init(Int)")
    }
    
}
class Sub71 : Super7 {
    override init() {
        print("Sub71:init()")
        super.init(x: 4)
    }
    required init(x: Int) {
        print("Sub71:init(Int)")
        super.init(x: 3)
    }
    convenience init(x:String) {
        self.init(x: 3)
    }
}
class Sup72 : Super7 {
    
}







