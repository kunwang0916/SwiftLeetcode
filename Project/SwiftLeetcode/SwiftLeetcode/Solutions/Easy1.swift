//
//  Easy1.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/26/18.
//  Copyright © 2018 K W. All rights reserved.
//

import UIKit

class Easy1: NSObject {
    public class func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map:[Int:Int] = [:]
        for i in 0..<nums.count {
            if let val = map[nums[i]] {
                return [val, i]
            } else {
                map[target - nums[i]] = i
            }
        }
        
        return []
    }
}
