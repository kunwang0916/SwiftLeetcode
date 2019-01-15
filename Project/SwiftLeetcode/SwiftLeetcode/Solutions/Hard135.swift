//
//  Hard135.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/14/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 135. Candy
 https://leetcode.com/problems/candy/
 **/
import UIKit

public class Hard135: NSObject {
    /**
     time: O(N)
     space: O(N)
     **/
    public class func candy(_ ratings: [Int]) -> Int {
        if ratings.isEmpty {
            return 0
        }
        
        var candy = Array(repeating: 1, count: ratings.count)
        
        for i in 1..<ratings.count {
            if ratings[i] > ratings[i-1] {
                candy[i] = candy[i-1] + 1
            }
        }
        
        for i in stride(from: ratings.count - 2, to: -1, by: -1) {
            if ratings[i] > ratings[i+1] {
                candy[i] = max(candy[i], (candy[i+1] + 1))
            }
        }
        
        let sum = candy.reduce(0, +)
        return sum
    }
}
