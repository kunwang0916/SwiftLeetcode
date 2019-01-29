//
//  Hard301.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/28/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 301. Remove Invalid Parentheses
 https://leetcode.com/problems/remove-invalid-parentheses/
 time : O(2^n)
 space: O(n^2)
 **/

import UIKit

class Hard301: NSObject {
    
    func removeInvalidParentheses(_ s: String) -> [String] {
        let (l, r) = countLandR(s)
        var result = [String]()
        dfs(s, 0, l, r, &result)
        return result
    }
    
    func dfs(_ s: String, _ start: Int, _ l: Int, _ r: Int, _ result: inout [String]) {
        if l == 0 && r == 0 {
            if isValid(s) {
                result.append(s)
            }
            return
        }
        
        for i in start..<s.count {
            if (i != start && self.getCharInStr(s, i) == self.getCharInStr(s, i-1)) {
                continue
            }
            
            let c = self.getCharInStr(s, i)
            
            if c == "(" || c == ")" {
                var curr = s
                curr.remove(at: curr.index(curr.startIndex, offsetBy: i))
                if (r > 0 && c == ")") {
                    dfs(curr, i, l, r-1, &result)
                } else if (l > 0 && c == "(") {
                    dfs(curr, i, l-1, r, &result)
                }
            }
        }
    }
    
    func getCharInStr(_ s:String, _ i: Int) -> Character{
        return s[s.index(s.startIndex, offsetBy: i)]
    }
    
    func countLandR(_ s: String) -> (Int, Int) {
        var l = 0
        var r = 0
        for c in s {
            if c == "(" {
                l += 1
            } else if c == ")" {
                if l > 0 {
                    l -= 1
                } else {
                    r += 1
                }
            }
        }
        
        return (l, r)
    }
    
    func isValid(_ s: String) -> Bool {
        var lc = 0
        for c in s {
            if c == "(" {
                lc += 1
            } else if c == ")" {
                lc -= 1
            }
            
            if lc < 0 {
                return false
            }
        }
        return lc == 0
    }
}
