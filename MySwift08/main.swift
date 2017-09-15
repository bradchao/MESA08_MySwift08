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
print(type(of:obj1))
objSub33.m2()
//obj1.m2()
var obj2 = obj1 as! Sub33   // 向下Sub !強制轉型
obj2.m2()
print("-----")
print(objSub31 === objSub32)
print(objSub33 === obj1)
print(obj2 === obj1)
print("-----")
//var pbj3 = objSuper3 as! Sub33  // 將Super3物件實體, 向下強制轉型








