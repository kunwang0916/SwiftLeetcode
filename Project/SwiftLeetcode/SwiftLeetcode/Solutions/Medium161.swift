//
//  Medium161.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/18/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 161. One Edit Distance
 https://leetcode.com/problems/one-edit-distance/
 time: O(N)
 space: O(1)
 **/

import UIKit

public class Medium161: NSObject {
    func isOneEditDistance(_ s: String, _ t: String) -> Bool {
        let sc = Array(s)
        let tc = Array(t)
        if sc.count == tc.count {
            return isOneRepalceAway(sc, tc)
        } else if sc.count - tc.count == 1 {
            return isOneDeleteAway(sc, tc)
        } else if tc.count - sc.count == 1 {
            return isOneDeleteAway(tc, sc)
        }
        return false
    }
    
    func isOneRepalceAway(_ s: [Character], _ t: [Character]) -> Bool {
        var removedOne = false
        for i in 0..<s.count {
            if s[i] != t[i] {
                if removedOne == true {
                    return false
                }
                removedOne = true
            }
        }
        return removedOne
    }
    
    func isOneDeleteAway(_ s: [Character], _ t: [Character]) -> Bool {
        var deletedOne = false
        var sIndex = 0
        var tIndex = 0
        while tIndex < t.count {
            if s[sIndex] != t[tIndex] {
                if deletedOne == true {
                    return false
                }
                deletedOne = true
                sIndex += 1
            } else {
                sIndex += 1
                tIndex += 1
            }
        }
        
        return true
    }
}
