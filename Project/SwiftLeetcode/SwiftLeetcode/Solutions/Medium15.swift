//
//  Medium15.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/30/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 15. 3Sum
 https://leetcode.com/problems/3sum/
 time: O(n^2)
 space: O(N)-> swift sort otherwise O(1)
 **/
 
import UIKit

public class Medium15: NSObject {
    public class func threeSum(_ nums: [Int]) -> [[Int]] {
        if nums.count < 3 {
            return []
        }
        var sortedNums = nums.sorted()
        var result = [[Int]]()
        for i in 0..<sortedNums.count - 1 {
            //avoid duplicated
            if (i > 0 && sortedNums[i] == sortedNums[i - 1]) {
                continue;
            }
            let target = 0 - sortedNums[i]
            var lowIndex = i + 1;
            var highIndex = sortedNums.count - 1
            while(lowIndex < highIndex) {
                let sum = sortedNums[lowIndex] + sortedNums[highIndex]
                if sum == target {
                    result.append([sortedNums[i], sortedNums[lowIndex], sortedNums[highIndex]])
                    // avoid the duplicated result
                    while (lowIndex < highIndex && sortedNums[lowIndex] == sortedNums[lowIndex + 1]) {
                        lowIndex += 1;
                    }
                    // avoid the duplicated result
                    while (lowIndex < highIndex && sortedNums[highIndex] == sortedNums[highIndex - 1] ) {
                        highIndex -= 1;
                    }
                    lowIndex += 1
                    highIndex -= 1
                } else if sum < target {
                    lowIndex += 1
                } else {
                    highIndex -= 1
                }
            }
        }
        return result
    }
}
