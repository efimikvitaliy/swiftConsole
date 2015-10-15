//
//  main.swift
//  TipOkConsole
//
//  Created by efimikvitaliy on 15.10.15.
//  Copyright (c) 2015 DreamTeam. All rights reserved.
//

import Foundation

extension String {
    var length : Int{
        return self.characters.count
    }
}

func input() -> String {
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    
    return String(NSString(data: inputData, encoding: NSWindowsCP1251StringEncoding)!)
}

struct Restaraunt {
    
    var name: String
    var address: String
    var raiting: Float
    
    func simpleDescription() -> String {
        return "\(name) is based at address \(address). And it has raiting = \(raiting) "
    }

}

var rest1 = Restaraunt(name: "pelmennaya #1",address: "address of pelmennaya", raiting: 100000000)
println(rest1.simpleDescription())
var isTrue: Bool = true;
var restaurnts = [Restaraunt]();

while isTrue {
    let command = input()
    
    print(command)
    switch command {
    case "add\n":
        print("name ")
        var name = input()
        name = na substringToIndex(name.length - 1)
        print("address ")
        var address = input()
        name = name.substringToIndex(name.length - 1)
        print("raiting ")
        var raiting: Float = NSString(string: input()).floatValue
        restaurnts.append(Restaraunt(name: name,address: address, raiting: raiting))
    case "show\n":
        print(restaurnts.count)
        for var i = 0; i < restaurnts.count ; ++i
        {
            println(restaurnts[i].simpleDescription())
        }
    case "exit\n":
        isTrue = false
    default:
        print("unknown command \(command)")
    }
}
var l = input()

print(l)



println("Hello, World!")

