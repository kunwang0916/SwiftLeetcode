//
//  Easy339.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/12/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 * // This is the interface that allows for creating nested lists.
 * // You should not implement it, or speculate about its implementation
 * class NestedInteger {
 *     // Return true if this NestedInteger holds a single integer, rather than a nested list.
 *     public func isInteger() -> Bool
 *
 *     // Return the single integer that this NestedInteger holds, if it holds a single integer
 *     // The result is undefined if this NestedInteger holds a nested list
 *     public func getInteger() -> Int
 *
 *     // Set this NestedInteger to hold a single integer.
 *     public func setInteger(value: Int)
 *
 *     // Set this NestedInteger to hold a nested list and adds a nested integer to it.
 *     public func add(elem: NestedInteger)
 *
 *     // Return the nested list that this NestedInteger holds, if it holds a nested list
 *     // The result is undefined if this NestedInteger holds a single integer
 *     public func getList() -> [NestedInteger]
 * }
 */
/**
 339. Nested List Weight Sum
 https://leetcode.com/problems/nested-list-weight-sum/
 time: O(N)
 space: O(D), D is the depth of the max level of stack
 **/
import UIKit

class Easy339: NSObject {
    /*
    //comment out since we don't have the code of NestedInteger
     
    func depthSum(_ nestedList: [NestedInteger]) -> Int {
        return depthSum(nestedList, 1)
    }
    
    func depthSum(_ nestedList: [NestedInteger], _ depth: Int) -> Int {
        if nestedList == nil {
            return 0
        }
        
        var sum = 0
        for ni in nestedList {
            if ni.isInteger() {
                sum += ni.getInteger() * depth
            } else {
                sum += depthSum(ni.getList(), depth+1)
            }
        }
        
        return sum
    }
    */
}
