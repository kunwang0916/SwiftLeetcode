//
//  Medium17.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/4/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 17. Letter Combinations of a Phone Number
 https://leetcode.com/problems/letter-combinations-of-a-phone-number/description/
 **/


import UIKit

public class Medium17: NSObject {
    public class func letterCombinations(_ digits: String) -> [String] {
        if digits.count == 0 {
            return []
        }
        var result:[String] = [""]
        let map:[Character:[Character]] = [
            "2": ["a", "b", "c"],
            "3": ["d", "e", "f"],
            "4": ["g", "h", "i"],
            "5": ["j", "k", "l"],
            "6": ["m", "n", "o"],
            "7": ["p", "q", "r", "s"],
            "8": ["t", "u", "v"],
            "9": ["w", "x", "y", "z"]
        ]
        
        for digit in digits {
            var newResult:[String] = []
            if let list = map[digit] {
                for char in list {
                    for str in result {
                        newResult.append(str + String(char))
                    }
                }
            }
        
            result = newResult
        }
        
        return result
    }
}
