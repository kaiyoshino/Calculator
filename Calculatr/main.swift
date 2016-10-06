//
//  main.swift
//  Calculatr
//
//  Created by Kai Yoshino on 10/4/16.
//  Copyright © 2016 Kai Yoshino. All rights reserved.
//

import Foundation
import Darwin

print("Enter an expression separated by returns:")

// initial number
let response = readLine(stripNewline: true)!
var num: UInt = 0
if (UInt(response) != nil) {
   var num = UInt.init(response)!
}
else {
    print("Invalid input: Start with a number!")
}

// operator
let oper = readLine(stripNewline: true)!


var count: UInt = 1
var total: UInt = num
var temp = UInt(oper)
var response2: String = ""

// if user submits another integer
if temp != nil {
    while (temp != nil) {
        count += 1
        total += temp!
        response2 = readLine(stripNewline: true)!
        temp = UInt(response2)
        
    }
}

if (response2 == "count" || oper == "count" && count == 2) {
    print(count)
    exit(0)
}
else if (response2 == "avg" || oper == "avg" && count == 2) {
    print(total/count)
    exit(0)
}
else if (response2 != "" && count > 1) {
    print("Invlaid input: use the operators +, -, *, /, %, avg, count, or fact")
    exit(0)
}
    
else if oper == "fact" {
    var factTemp: UInt = 1
    for var i in 0...(num - 1) {
        factTemp *= (num - i)
    }
    print(factTemp)
    exit(0)
}
else {

    let resp2 = readLine(stripNewline: true)!

    let num2 = UInt.init(resp2)!

    if oper == "+" {
        print(num + num2)
    }
    else if oper == "-" {
        print(num - num2)
    }
    else if oper == "*" {
        print(num * num2)
    }
    else if oper == "/" {
        print(num / num2)
    }
    else if oper == "%" {
        print(num % num2)
    }
    else {
        print("Invlaid input: use the operators +, -, *, /, %, avg, count, or fact")
        exit(0)
    }
}
