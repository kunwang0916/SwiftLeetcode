//
//  Medium380.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/2/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 380. Insert Delete GetRandom O(1)
 https://leetcode.com/problems/insert-delete-getrandom-o1/
 time: O(1)
 space: O(N)
 **/


import UIKit

class Medium380: NSObject {
    var indexMap = [Int:Int]()
    var nums = [Int]()
    /** Initialize your data structure here. */
    override init() {
        
    }
    
    /** Inserts a value to the set. Returns true if the set did not already contain the specified element. */
    func insert(_ val: Int) -> Bool {
        if let _ = indexMap[val] {
            return false
        }
        
        indexMap[val] = nums.count
        nums.append(val)
        return true
    }
    
    /** Removes a value from the set. Returns true if the set contained the specified element. */
    func remove(_ val: Int) -> Bool {
        guard let removeIndex = indexMap[val] else {
            return false
        }
        let lastIndex = self.nums.count - 1
        indexMap[self.nums[lastIndex]] = removeIndex
        indexMap[val] = nil
        // swap value-to-be-removed with last num
        (self.nums[removeIndex], self.nums[lastIndex]) = (self.nums[lastIndex], self.nums[removeIndex])
        // remove Last is o(1)
        self.nums.removeLast()
        return true
    }
    
    /** Get a random element from the set. */
    func getRandom() -> Int {
        let index = Int.random(in:0..<self.nums.count)
        return self.nums[index]
    }
}
