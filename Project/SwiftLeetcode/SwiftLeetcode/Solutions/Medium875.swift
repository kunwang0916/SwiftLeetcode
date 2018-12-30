//
//  Medium875.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/29/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 875. Koko Eating Bananas
 https://leetcode.com/problems/koko-eating-bananas/
 time : O(LogN)
 space: O(1)
 **/

import UIKit

class Medium875: NSObject {
    func minEatingSpeed(_ piles: [Int], _ H: Int) -> Int {
        var lowSpeed = 1
        var highSpeed = piles.max()!
        while (lowSpeed < highSpeed) {
            let m = lowSpeed + (highSpeed - lowSpeed) / 2
            if hoursBySpeed(piles, m) <= H {
                highSpeed = m
            } else {
                lowSpeed = m + 1
            }
        }
        
        return lowSpeed
    }
    
    func hoursBySpeed(_ piles:[Int], _ speed:Int) -> Int {
        var hours = 0
        for p in piles {
            hours += (p + speed - 1) / speed
        }
        return hours
    }
}
