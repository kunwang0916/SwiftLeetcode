//
//  Easy20.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/19/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 20. Valid Parentheses
 https://leetcode.com/problems/valid-parentheses
 time: O(N)
 space: O(N)
 **/
import UIKit

class Easy20: NSObject {
    func isValid(_ s: String) -> Bool {
        let pairs = [
            Character("("): Character(")"),
            Character("{"): Character("}"),
            Character("["): Character("]"),
        ]
        
        let leftBrackets:Set<Character> = [Character("("), Character("{"), Character("[")]
        var stack = [Character]()
        
        for ch in s {
            if leftBrackets.contains(ch) {
                stack.append(ch)
            } else {
                if stack.isEmpty {
                    return false
                }
                
                let lb = stack.popLast()
                if ch != pairs[lb!] {
                    return false
                }
            }
        }
        
        return stack.isEmpty
    }
}
