//
//  Easy88.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/1/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 88. Merge Sorted Array
 https://leetcode.com/problems/merge-sorted-array/
 time : O(M+N)
 space: O(1)
 **/
import UIKit

public class Easy88: NSObject {
    public class func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var p1 = m - 1
        var p2 = n - 1
        var index = m + n - 1
        
        while (p1 > -1 && p2 > -1) {
            if nums1[p1] > nums2[p2] {
                nums1[index] = nums1[p1]
                p1 -= 1
            } else {
                nums1[index] = nums2[p2]
                p2 -= 1
            }
            index -= 1
        }
        
        while p2 > -1 {
            nums1[index] = nums2[p2]
            index -= 1
            p2 -= 1
        }
    }
}
