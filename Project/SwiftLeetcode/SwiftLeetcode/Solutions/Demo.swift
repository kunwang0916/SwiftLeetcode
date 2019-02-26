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
    
    public class func int2binary(_ num: Int) -> String {
        var s = ""
        var n = num;
        while n > 0 {
            s = String(n % 2) + s
            n = n / 2
        }
        return s
    }
    
    public class func minSubStr(_ s:String) -> String {
        var result = s
        var charSet = Set<Character>()
        
        for c in s {
            charSet.insert(c)
        }
        
        let maxCharaNum = charSet.count
        let n = s.count
        let sArray = Array(s)
        var from = 0, to = 0
        var charCount = [Character: Int]()
        while from < n && to < n {
            if from < n - 1 && sArray[from] == sArray[from + 1] {
                charCount[sArray[from]] = (charCount[sArray[from]] ?? 0 ) - 1
                if charCount[sArray[from]]! < 1 {
                    charCount[sArray[from]] = nil
                }
                from += 1
                to = max(from, to)
                continue
            }
            
            while to < n && charCount.keys.count < maxCharaNum {
                charCount[sArray[to]] = (charCount[sArray[to]] ?? 0) + 1
                to += 1
            }
            
            if to < n && to - from < result.count && charCount.keys.count == maxCharaNum {
                result = String(sArray[from..<to])
            }
            
            charCount[sArray[from]] = (charCount[sArray[from]]!) - 1
            if charCount[sArray[from]]! < 1 {
                charCount[sArray[from]] = nil
            }
            from += 1
            to = max(from, to)
        }
        
        return result
    }
}
