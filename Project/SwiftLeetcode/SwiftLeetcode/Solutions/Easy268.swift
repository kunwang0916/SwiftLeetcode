//
//  Easy268.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/29/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 268. Missing Number
 https://leetcode.com/problems/missing-number/
 time: O(N)
 space: O(1)
 **/

import UIKit

class Easy268: NSObject {
    func missingNumber(_ nums: [Int]) -> Int {
        let n = nums.count
        var sum = (n * (n+1)) / 2
        for num in nums {
            sum -= num
        }
        return sum
    }
}
