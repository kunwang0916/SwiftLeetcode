//
//  Medium560.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/25/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 560. Subarray Sum Equals K
 https://leetcode.com/problems/subarray-sum-equals-k/description/
 Given an array of integers and an integer k, you need to find the total number of continuous subarrays whose sum equals to k.
 
 Example 1:
 Input:nums = [1,1,1], k = 2
 Output: 2
 
 Note:
 The length of the array is in range [1, 20,000].
 The range of numbers in the array is [-1000, 1000] and the range of the integer k is [-1e7, 1e7].
 **/
import UIKit

public class Medium560: NSObject {
    public class func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        return hashmapSum(nums, k)
    }
    
    // time: O(n^3) space: O(1)
    class func bruteForceSum(_ nums: [Int], _ k: Int) -> Int {
        let n = nums.count
        var count = 0
        for from in 0..<n {
            for to in (from + 1)...n {
                var sum = 0;
                for index in from..<to {
                    sum += nums[index]
                }
                if sum == k {
                    count += 1
                }
            }
        }
        
        return count
    }
    
    // time: O(n^2), space: O(n)
    class func prefixSum(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        var sum = Array(repeating: 0, count: nums.count + 1)
        for i in 1...nums.count {
            sum[i] = sum[i-1] + nums[i-1]
        }
        
        for from in 0..<nums.count {
            for to in (from)..<nums.count {
                if sum[to+1] - sum[from] == k {
                    count += 1
                }
            }
        }
        return count
    }
    
    // time: O(n), space: O(n)
    class func hashmapSum(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        var sum = 0
        var dic = [Int: Int]()
        dic[0] = 1
        for num in nums {
            sum += num
            let d = sum - k
            if let v = dic[d] {
                count += v
            }
            if let v = dic[sum] {
                dic[sum] = v + 1
            } else {
                dic[sum] = 1
            }
        }
        
        return count
    }
}
