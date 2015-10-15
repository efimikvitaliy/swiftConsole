//
//  main.swift
//  TipOkConsole
//
//  Created by efimikvitaliy on 15.10.15.
//  Copyright (c) 2015 DreamTeam. All rights reserved.
//

import Foundation
//
//extension String {
//    var length : Int{
//        return self.characters.count
//    }
//}

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

var restarauntDict = [String: Restaraunt]();

while isTrue {
    let command = input()
    print(command)
    
    
    switch command {
    case "add\n":
        print("name ")
        var name = input()
        name = name.substringToIndex(name.endIndex.predecessor())
        
        print("address ")
        var address = input()
        address = address.substringToIndex(address.endIndex.predecessor())
        
        print("raiting ")
        var raiting: Float = NSString(string: input()).floatValue
        restarauntDict[name] = Restaraunt(name: name,address: address, raiting: raiting)
    
    case "show\n":
        for (name, rest) in restarauntDict
        {
            println(rest.simpleDescription())
        }
    case "tip\n":
        print("enter restaurant name ")
        var name = input()
        name = name.substringToIndex(name.endIndex.predecessor())
        
        var tmpRestaurant = restarauntDict[name]
        if let currentRestaurant = tmpRestaurant {
            
            print("enter summ in check ")
            var sum: Float = NSString(string: input()).floatValue
            
            print("enter impression from 1 to 10 ")
            var impression: Float = NSString(string: input()).floatValue
            
            var tipReccomendation = sum*0.01 + currentRestaurant.raiting*0.5 + impression*0.5;
            
            print("Tip reccomendation is \(tipReccomendation)")
        }
        else {
            print("There is no restaraunt with name \(name) in database")
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

