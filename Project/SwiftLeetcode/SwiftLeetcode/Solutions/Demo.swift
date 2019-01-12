//
//  Demo.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/11/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

public class Demo: NSObject {
    public class func convert(_ char: Character) -> Int {
        var map:[Character: Int] = [
            "0": 0,
            "1": 1,
            "2": 2,
            "3": 3,
            "4": 4,
            "5": 5,
            "6": 6,
            "7": 7,
            "8": 8,
            "9": 9,
        ]
        
        return map[char] ?? 0
    }
    
    public class func stringToNum (_ str: String) -> Int {
        var num = 0
        var isNagetive = false
        for i in 0..<str.count {
            let index = str.index(str.startIndex, offsetBy: i)
            let c = str[index]
            if c == "-" && i == 0 {
                isNagetive = true
            }
            num = num * 10
            let n = convert(c)
            num = num + n
        }
        
        if isNagetive {
            return -(num)
        }
        return num
    }
}
