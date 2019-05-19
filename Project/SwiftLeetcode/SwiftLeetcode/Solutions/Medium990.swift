//
//  Medium990.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/11/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 990. Satisfiability of Equality Equations
 https://leetcode.com/problems/satisfiability-of-equality-equations/
 union find
 time: O(N)
 space: O(N)
 **/

import UIKit

public class Medium990: NSObject {
    var parents = [Character: Character]()
    
    func equationsPossible(_ equations: [String]) -> Bool {
        for str in equations {
            let fc = charAt(str, 0)
            let lc = charAt(str, 3)
            if charAt(str, 1) == "=" {
                parents[findParent(fc)] = parents[findParent(lc)]
            }
        }
        
        for str in equations {
            let fc = charAt(str, 0)
            let lc = charAt(str, 3)
            if charAt(str, 1) == "!" && findParent(fc) == findParent(lc) {
                return false
            }
        }
        
        return true
    }
    
    func findParent(_ c: Character) -> Character {
        var result:Character
        if self.parents[c] == nil {
            self.parents[c] = c
            result = c
        } else if c != self.parents[c] {
            if let pc = parents[c] {
                parents[c] = findParent();
                result = c
            }
        }
        return result
    }
    
    func charAt(_ s: String, _ i: Int) -> Character {
        return s[s.index(s.startIndex, offsetBy: i)]
    }
}
