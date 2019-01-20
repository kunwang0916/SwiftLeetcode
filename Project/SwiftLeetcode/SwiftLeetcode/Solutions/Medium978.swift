//
//  Medium978.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/19/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 978. Longest Turbulent Subarray
 time : O(n)
 space: O(n)
 **/
import UIKit

public class Medium978: NSObject {
    public class func maxTurbulenceSize(_ A: [Int]) -> Int {
        var dp1 = Array(repeating: 1, count: A.count + 1)
        var dp2 = Array(repeating: 1, count: A.count + 1)
        for k in 0..<A.count - 1 {
            if (A[k] > A[k+1]) {
                if k % 2 == 0 {
                    // even
                    dp2[k+1] = dp2[k] + 1
                } else {
                    // odd
                    dp1[k+1] = dp1[k] + 1
                }
            } else if (A[k] < A[k+1]) {
                if k % 2 == 0 {
                    //even
                    dp1[k+1] = dp1[k] + 1
                } else {
                    // odd
                    dp2[k+1] = dp2[k] + 1
                }
            }
        }
        
        var maxValue = 0
        for i in 0..<A.count + 1 {
            maxValue = max(maxValue, max(dp1[i], dp2[i]))
        }
        
        return maxValue
    }
}
