//
//  Medium299.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/4/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 299. Bulls and Cows
 https://leetcode.com/problems/bulls-and-cows/
 time: O(N)
 space: O(N)
 **/

import UIKit

class Medium299: NSObject {
    func getHint(_ secret: String, _ guess: String) -> String {
        var bulls = 0
        var cows = 0
        
        let sArray = Array(secret)
        let gArray = Array(guess)
        var gCount = [Character: Int]()
        var sCount = [Character: Int]()
        
        for i in 0..<sArray.count {
            let s = sArray[i]
            let g = gArray[i]
            if s == g {
                bulls += 1
            } else {
                gCount[g] = (gCount[g] ?? 0) + 1
                sCount[s] = (sCount[s] ?? 0) + 1
            }
        }
        
        for (char, count) in sCount {
            if let gc = gCount[char] {
                cows += min(count, gc)
            }
        }
        
        return "\(bulls)A\(cows)B"
    }
}
