//
//  main.swift
//  AccessControl
//
//  Created by giftbot on 2020/04/20.
//  Copyright © 2020 giftbot. All rights reserved.
//

import Foundation



/***************************************************
 Internal
 ***************************************************/
print("\n---------- [ Internal ] ----------\n")

let internalClass = InternalClass()
print(internalClass.publicProperty)
print(internalClass.internalProperty)
print(internalClass.defaultProperty)
//print(internalClass.fileprivateProperty)
//print(internalClass.privateProperty)


/***************************************************
 Fileprivate
 ***************************************************/
print("\n---------- [ Fileprivate ] ----------\n")

//접근 불가
//let fileprivateClass = FileprivateClass()

let anotherClass = SameFileAnotherClass()
anotherClass.someFunction()


/***************************************************
 Private
 ***************************************************/
print("\n---------- [ Private ] ----------\n")

//접근 불가
//let privateClass = PrivateClass()

let someOtherClass = SomeOtherClass()
someOtherClass.someFunction()

