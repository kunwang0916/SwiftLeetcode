//
//  Easy38.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/24/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 38. Count and Say
 https://leetcode.com/problems/count-and-say/description/
 
 The count-and-say sequence is the sequence of integers with the first five terms as following:
 
 1.     1
 2.     11
 3.     21
 4.     1211
 5.     111221
 1 is read off as "one 1" or 11.
 11 is read off as "two 1s" or 21.
 21 is read off as "one 2, then one 1" or 1211.
 Given an integer n, generate the nth term of the count-and-say sequence.
 
 Note: Each term of the sequence of integers will be represented as a string.
 
 Example 1:
 
 Input: 1
 Output: "1"
 Example 2:
 
 Input: 4
 **/

import UIKit

public class Easy38: NSObject {
    public class func countAndSay(_ n: Int) -> String {
        var result = "1"
        var round = 1;
        while round < n {
            var newResult = ""
            var charcCount = 0
            var lastCharc = [Character](result)[0]
            for character in result {
                if character == lastCharc {
                    charcCount += 1
                } else {
                    newResult += String(charcCount)
                    newResult += String(lastCharc)
                    charcCount = 1
                    lastCharc = character
                }
            }
            newResult += String(charcCount)
            newResult += String(lastCharc)
            result = newResult
            round += 1
        }
        return result;
    }
}
