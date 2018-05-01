//
//  Medium215.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/26/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 215. Kth Largest Element in an Array
 https://leetcode.com/problems/kth-largest-element-in-an-array/description/
 
 Find the kth largest element in an unsorted array. Note that it is the kth largest element in the sorted order, not the kth distinct element.
 
 For example,
 Given [3,2,1,5,6,4] and k = 2, return 5.
 
 Note:
 You may assume k is always valid, 1 ≤ k ≤ array's length.
 **/
import UIKit

public class Medium215: NSObject {
    // time: O(n), space: O(1)
    public class func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var from = 0
        var to = nums.count - 1
        var tNums = nums
        while (true) {
            let p = self.partition(&tNums, from, to: to)
            if (p+1 == k) {
                return tNums[p]
            } else if (p+1 < k) {
                from = p + 1
            } else {
                to = p - 1
            }
        }
    }
    
    class func partition(_ nums: inout [Int], _ from: Int, to: Int) -> Int {
        let pivot = nums[from]
        var l = from + 1
        var r = to
        while (l <= r) {
            if (nums[l] < pivot && nums[r] > pivot) {
                swap(&nums, l, r)
                l += 1
                r -= 1
            }
            if (nums[l] >= pivot) {
                l += 1
            }
            if (nums[r] <= pivot) {
                r -= 1
            }
        }
        // swap with the pivot
        self.swap(&nums, from, r)
        return r
    }
    
    class func swap(_ nums: inout [Int], _ a: Int, _ b: Int) {
        let t = nums[a]
        nums[a] = nums[b]
        nums[b] = t
    }
}
