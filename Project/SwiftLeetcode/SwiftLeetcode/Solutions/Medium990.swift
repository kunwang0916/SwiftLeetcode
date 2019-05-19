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
        guard let pc = self.parents[c] else {
            self.parents[c] = c
            return c
        }

        if c != pc {
            let pcv = findParent(pc)
            self.parents[c] = pcv
            return pcv
        } else {
            return c
        }
    }
    
    func charAt(_ s: String, _ i: Int) -> Character {
        return s[s.index(s.startIndex, offsetBy: i)]
    }
}
