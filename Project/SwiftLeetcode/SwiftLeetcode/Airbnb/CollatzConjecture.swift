//
//  CollatzConjecture.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/24/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

public class CollatzConjecture: NSObject {
    public func longestSteps(_ n: Int) -> Int {
        var memo:[Int: Int] = [:]
        var curMax = 0
        var result = 0
        for i in 0..<n {
            let steps = findSteps(i, &memo)
            memo[i] = steps
            if steps > curMax {
                curMax = steps
                result = i
            }
        }
        return result
    }
    
    private func findSteps(_ n: Int, _ memo: inout [Int: Int]) -> Int {
        if n <= 1 {
            return 0
        }
        
        if let steps = memo[n] {
            return steps
        }
        
        var result = 0
        if n % 2 == 0 {
            result = findSteps(n / 2, &memo) + 1
        } else {
            result = findSteps(3 * n + 1, &memo) + 1
        }
        
        return result
    }
}
