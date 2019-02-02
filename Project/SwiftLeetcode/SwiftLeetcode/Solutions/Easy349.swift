//
//  Easy349.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/1/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 349. Intersection of Two Arrays
 https://leetcode.com/problems/intersection-of-two-arrays/
 **/
import UIKit

class Easy349: NSObject {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        return sortSolution(nums1, nums2)
    }
    
    //sort:
    // time: O(NlogN)
    // space: O(1)..even though swift is O(N)
    func sortSolution(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var nums2 = nums2.sorted()
        var nums1 = nums1.sorted()
        var result = [Int]()
        for i in 0..<nums1.count {
            if i > 0 && nums1[i] == nums1[i-1] {
                continue
            }
            if binarySearch(&nums2, nums1[i]) {
                result.append(nums1[i])
            }
        }
        return result
    }
    
    func binarySearch(_ nums: inout [Int], _ target: Int) -> Bool {
        var l = 0
        var h = nums.count - 1
        while l < h {
            let m = l + (h-l) / 2
            if nums[m] == target {
                return true
            } else if nums[m] < target {
                l = m + 1
            } else {
                h = m - 1
            }
         }
        
        return false
    }
    
    
    /**
     time: O(m+n)
     space: O(m)
     **/
    func dicSolution(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var visited = [Int:Int]()
        for num in nums1 {
            visited[num] = 1
        }
        
        var result = [Int]()
        for num in nums2 {
            if visited[num] != nil {
                visited[num] = nil
                result.append(num)
            }
        }
        
        return result
    }
}
