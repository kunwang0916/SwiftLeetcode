//
//  Hard41.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/30/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 41. First Missing Positive
 https://leetcode.com/problems/first-missing-positive/description/
 **/
import UIKit

public class Hard41: NSObject {
    // time: O(n), space, O(1)
    public class func firstMissingPositive(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 1;
        }
        var tNums = nums
        for i in 0..<tNums.count {
            // key logic:
            while (tNums[i] > 0 && tNums[i] <= tNums.count && tNums[tNums[i]-1] != tNums[i] ) {
                // swap
                let t = tNums[tNums[i] - 1]
                tNums[tNums[i] - 1] = tNums[i]
                tNums[i] = t
            }
        }
        for i in 0..<tNums.count {
            if (tNums[i] != i+1) {
                return i + 1
            }
        }
        return nums.count + 1
    }
}
