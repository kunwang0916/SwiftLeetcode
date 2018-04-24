//
//  Medium319.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/24/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 319. Bulb Switcher
 https://leetcode.com/problems/bulb-switcher/description/
 There are n bulbs that are initially off. You first turn on all the bulbs.
 Then, you turn off every second bulb. On the third round,
 you toggle every third bulb (turning on if it's off or turning off if it's on).
 For the ith round, you toggle every i bulb. For the nth round, you only toggle the last bulb.
 Find how many bulbs are on after n rounds.
 
 Example:
 
 Given n = 3.
 
 At first, the three bulbs are [off, off, off].
 After first round, the three bulbs are [on, on, on].
 After second round, the three bulbs are [on, off, on].
 After third round, the three bulbs are [on, off, off].
 
 So you should return 1, because there is only one bulb is on.


 **/

import UIKit
import Foundation

public class Medium319: NSObject {
    public class func bulbSwitch(_ n: Int) -> Int {
        // this is a D**N math problem
        return Int(sqrt(Double(n)))
    }
}
