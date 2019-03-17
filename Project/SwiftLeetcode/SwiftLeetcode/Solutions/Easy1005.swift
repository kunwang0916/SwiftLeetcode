//
//  Easy1005.swift
//  SwiftLeetcode
//
//  Created by roosky on 3/9/19.
//  Copyright © 2019 K W. All rights reserved.
//

import Foundation

public class Easy1005: NSObject {
    func largestSumAfterKNegations(_ A: [Int], _ K: Int) -> Int {
        var sum = 0
        var minusNums = [Int]()
        var minimalABSValue = Int.max
        for n in A {
            minimalABSValue = min(abs(n), minimalABSValue)
            if n > 0 {
                sum += n
            }
            if n < 0 {
                minusNums.append(n)
            }
        }
        
        minusNums = minusNums.sorted()
        var op = K
        if minusNums.count == 0 {
            sum = sum - (op % 2) * minimalABSValue * 2
        } else {
            if minusNums.count > 1 {
                op = op % minusNums.count
            } else {
                op = op % 2
            }
            
            for i in 0..<minusNums.count {
                if i < op {
                    sum += abs(minusNums[i])
                } else {
                    sum += minusNums[i]
                }
            }
        }
        
        return sum
    }
}
