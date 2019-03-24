//
//  Easy1020.swift
//  SwiftLeetcode
//
//  Created by roosky on 3/23/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 1020. Partition Array Into Three Parts With Equal Sum
 https://leetcode.com/problems/partition-array-into-three-parts-with-equal-sum/
 time: O(N)
 space: O(1)
 **/

import UIKit

class Easy1020: NSObject {
    func canThreePartsEqualSum(_ A: [Int]) -> Bool {
        var sum = 0
        for num in A {
            sum += num
        }
        let target = sum / 3
        var count = 0
        var pSum = 0
        for num in A {
            pSum += num
            if pSum == target {
                count += 1
                pSum = 0
            }
        }
        return count == 3
    }
}
