//
//  Medium1058.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/17/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

/**
 1058. Minimize Rounding Error to Meet Target
 https://leetcode.com/problems/minimize-rounding-error-to-meet-target/
 time : O(NLogN)
 space: O(N)
 **/


public class Medium1058: NSObject {
    struct IndexDecimal {
        let index: Int
        let decimal: Double
    }
  
    public func minimizeError(_ prices: [String], _ target: Int) -> String {
        var flooredSum = 0.0
        var ceilSum = 0.0
        var decimals = [IndexDecimal]()
        for i in 0..<prices.count {
            if let price = Double(prices[i]) {
                flooredSum += floor(price)
                ceilSum += ceil(price)
                let idxDec = IndexDecimal(index: i, decimal: price - floor(price))
                decimals.append(idxDec)
            }
        }
        
        if Double(target) < flooredSum || Double(target) > ceilSum {
            return "-1"
        }
        
        let numToCeil = target - Int(flooredSum)
        // sort by decimal in desc order, so the top k will be ceiled
        // normal sort O(NLogN)
        // decimals = decimals.sorted{ $0.decimal > $1.decimal }
        // quick select O(N)
        quickSelect(&decimals, numToCeil, 0, decimals.count - 1)
        var result = 0.0
        for i in 0..<decimals.count {
            if (i < numToCeil) {
                // ceiled value
                result += 1 - decimals[i].decimal
            } else {
                // floored value
                result += decimals[i].decimal
            }
        }
        
        return String(format: "%.3f", result)
    }
    
    // O(N) sort for top k
    private func quickSelect(_ array: inout [IndexDecimal], _ k: Int, _ start: Int, _ end: Int) {
        if k <= 0 || k > (end - start + 1) {
            return
        }
        let index = self.partition(&array, start, end)
        let diff = index - start + 1
        if diff == k {
            // top k sorted
            return
        }
        
        if diff > k {
            quickSelect(&array, k, start, index - 1)
        } else {
            quickSelect(&array, k - diff, index + 1, end)
        }
    }
    
    private func partition(_ array: inout [IndexDecimal], _ start: Int, _ end: Int) -> Int {
        let pivot = array[end].decimal
        var i = start
        for j in start..<end {
            if array[j].decimal > pivot {
                array.swapAt(i, j)
                i += 1
            }
        }
        array.swapAt(i, end)
        return i
    }
}
