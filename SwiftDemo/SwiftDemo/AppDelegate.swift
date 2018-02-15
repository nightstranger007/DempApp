//
//  AppDelegate.swift
//  SwiftDemo
//
//  Created by ladmin on 06/02/2018.
//  Copyright © 2018 Pentaloop. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        let str = "Hello, playground"
        
        
        let index = str.index(str.startIndex, offsetBy: 5)
        let mySubstring = str[..<index] // Hello
        
        let _ = String(mySubstring)
        
        print("Pakistan\(str)")
        
//        if let range = str.rangeOfString("ello") {
//            print("ello")                           // ello
//        } else {
//            print("nope")
//        }
//
        
        let string = "hello Swift"
        
        if string.range(of:"Swift") != nil {
            print("exists")
        }
        
//        str.working()
        
//        var str = "Hello"
//        var smile = "😄"
//        var combined = str + " " + smile
//
//        // Common Operations
//
//        var length = combined.characters.count // 7
//        print(combined.lowercased())
//        print(combined.uppercased())
//
//        //Working with Characters
//
//        for char in combined.characters {
//            // Loops seven times
//            print(char)
//        }
//
//        //Substrings
//
//        var trail = combined.substringWith(Range<String.Index>(str.index, in: combined.endIndex))  // " 😄"
        
        return true
    }



    
    func dictionary1()   {
        var emptyDictionary = Dictionary<String, Float>()
        var anotherEmptyDict = [String:Float]()
        var strings = [
            "a": "A",
            "b": "B",
            ]
        print(strings["a"])
        strings["a"] = "AZ"
        strings.updateValue("Pakistan", forKey: "")
    }
    
    
    func array1()  {
        var strings = ["a", "b", "c"]
        var strings2: [String] = ["d", "e", "f"]
        var strings3 = [String]()
        var strings4 = [String](repeating: "hey", count: 3)
        
        strings += ["d"]
        strings.append("e")
        strings += ["f", "g"]
        strings3 = strings + strings2
        print(strings.count)
        
        print(strings[0])                         // a
        print(strings.first!)                     // a
        print(strings[strings.endIndex - 1])      // g
        print(strings.last!)                      // g

        
        strings[0..<1] = ["a"]                       // Exclusive (basically the same as the prev assignment)
        strings[0...1] = ["a", "b"]                  // Inclusive
//        strings[0...3]                               // ["a", "b", "c", "d"]
//        strings[0..<strings.endIndex]                // ["a", "b", "c", "d", "e", "f", "g"]
        
        if strings.isEmpty {
            print("empty")
        } else {
            print("populated")                   // populated
        }
        strings.insert("a", at: 0)            // Insert, not replace
        print(strings.remove(at: 0))          // a
        strings.map({
            (str: String) -> String in
            return str + "0"
        })                                         // ["a0", "b0", "c0", "d0", "e0", "f0", "g0"]
        strings.removeLast()
        
        strings.removeAll(keepingCapacity: false)
        strings = []
        
    }
    
    
    func optionalVar()  {
        
        var optionalString:String? = "Hello?"
        
        if let a = optionalString {
            print(a)               // Hello?
        }
        
        optionalString = nil
        
        if let b = optionalString {
            print("yep")
        } else {
            print("nope")         // nope
        }
    }
    
    
    func switch1()   {
        let i = 1
        
        switch i {
        case 1:
            print("one")
        case 2:
            print("two")
        case 3, 4:
            // Comma-separate multiple expressions in the same case statement.
            print("three or four")
        case _ where i > 5:
            print("greater than 5")
        default:
            // Default is required.
            print("less than 1")
        }
        
        switch isEven(int: i) {
        case true: print("Even")
        case false: print("Odd")
        }
    }

    func isEven (int: Int) -> Bool {
        return int % 2 == 0
    }
    
    
    func looping() {
        for index in 1..<5 {
            print(index)           // 1 2 3 4
        }
        for index in 1...5 {
            print(index)           // 1 2 3 4 5
        }
//        for (var i = 0; i < 5; i++) {
//            print(i)               // 0 1 2 3 4
//        }
    }
}



//extension String {
//    func beginsWith (str: String) -> Bool {
//        if let range = str.range(of: ) {
//            return range.startIndex == self.startIndex
//        }
//        return false
//    }
//
//    func endsWith (str: String) -> Bool {
//        if let range = self.rangeOfString(str, options:NSStringCompareOptions.BackwardsSearch) {
//            return range.endIndex == self.endIndex
//        }
//        return false
//    }
//}

