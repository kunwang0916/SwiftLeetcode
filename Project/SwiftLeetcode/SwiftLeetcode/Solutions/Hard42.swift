//
//  Hard42.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/3/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

public class Hard42: NSObject {
    func trap(_ height: [Int]) -> Int {
        // TODO: unsolved
        if height.count < 3 {
            return 0
        }
        
        var sum = 0
        for i in 0...height.count-2 {
            if height[i] == 0 || height[i+1] >= height[i] {
                continue
            }
            
            for j in (i+1)..<height.count {
                if height[j] >= height[i] {
                    sum += j - i - 1
                    break
                }
            }
            
        }
        
        return sum;
    }
}
