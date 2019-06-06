//
//  Medium150.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/5/19.
//  Copyright © 2019 K W. All rights reserved.
//

/***
 150. Evaluate Reverse Polish Notation
 https://leetcode.com/problems/evaluate-reverse-polish-notation/
 time: O(N)
 space: O(N)
 ***/


import UIKit

class Medium150: NSObject {
    func evalRPN(_ tokens: [String]) -> Int {
        var numsStack:[Int] = []
        let operators:Set<String> = ["+", "-", "*", "/"]
        for str in tokens {
            if operators.contains(str) {
                let n2 = numsStack.removeLast()
                let n1 = numsStack.removeLast()
                let result = applyNotation(n1, n2, str)
                numsStack.append(result)
            } else {
                if let n = Int(str) {
                    numsStack.append(n)
                }
            }
        }
        
        return numsStack.last ?? 0
    }
    
    func applyNotation(_ n1: Int, _ n2: Int, _ opt: String) -> Int {
        if opt == "+" {
            return n1 + n2
        } else if opt == "-" {
            return n1 - n2
        } else if opt == "*" {
            return n1 * n2
        } else if opt == "/" {
            return n1 / n2
        }
        
        return 0
    }
}
