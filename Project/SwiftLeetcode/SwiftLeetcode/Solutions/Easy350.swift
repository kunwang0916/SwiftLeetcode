//
//  Easy350.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/1/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 350. Intersection of Two Arrays II
 https://leetcode.com/problems/intersection-of-two-arrays-ii/
 time: O(N)
 space: O(N)
 **/

import UIKit

class Easy350: NSObject {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var countMap = [Int:Int]()
        for num in nums1 {
            countMap[num] = (countMap[num] ?? 0) + 1
        }
        
        var result = [Int]()
        for num in nums2 {
            let count = (countMap[num] ?? 0)
            if count > 0 {
                result.append(num)
                countMap[num] = count - 1
            }
        }
        
        return result
    }
}
