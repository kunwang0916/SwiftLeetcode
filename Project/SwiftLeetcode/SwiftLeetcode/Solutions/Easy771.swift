//
//  Easy771.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/24/18.
//  Copyright © 2018 K W. All rights reserved.
//
//

/*
 https://leetcode.com/problems/jewels-and-stones/description/
 
 You're given strings J representing the types of stones that are jewels, and S representing the stones you have.
 Each character in S is a type of stone you have.  You want to know how many of the stones you have are also jewels.
 
 The letters in J are guaranteed distinct, and all characters in J and S are letters. Letters are case sensitive,
 so "a" is considered a different type of stone from "A".
 
 - Example 1:
 
 Input: J = "aA", S = "aAAbbbb"
 Output: 3
 
 - Example 2:
 
 Input: J = "z", S = "ZZ"
 Output: 0
 */
 

import UIKit

public class Easy771: NSObject {
    public class func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var result = 0
        for char in S {
            if J.contains(char) {
                result += 1
            }
        }
        return result
    }
}
