

//
//  Easy665.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/1/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 665. Non-decreasing Array
 https://leetcode.com/problems/non-decreasing-array/description/
 **/
import UIKit

public class Easy665: NSObject {
    // time: O(n), space: O(1)
    public class func checkPossibility(_ nums: [Int]) -> Bool {
        if nums.count == 0 {
            return true
        }
        var tNums = nums
        var count = 0
        for i in 1..<tNums.count {
            if (tNums[i] < tNums[i-1] ) {
                count += 1
                if (count > 1) {
                    return false
                }
                // try to modify the array in one step
                if (i - 2 < 0 || tNums[i - 2] <= tNums[i]) {
                    tNums[i-1] = tNums[i]
                } else {
                    tNums[i] = tNums[i-1]
                }
            }
        }
        return true
    }
}
