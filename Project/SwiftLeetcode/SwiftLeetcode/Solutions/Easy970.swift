//
//  Easy970.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/5/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

class Easy970: NSObject {
    func powerfulIntegers(_ x: Int, _ y: Int, _ bound: Int) -> [Int] {
        var result = [Int]()
        helper(x, y, 0, 0, bound, &result)
        return result
    }
    
    func helper(_ x: Int, _ y: Int, _ powerX: Int, _ powerY: Int, _ bound: Int, _ result :inout [Int]) {
        let sum = Int(pow(Double(x), Double(powerX)) + pow(Double(y), Double(powerY)))
        if sum > bound {
            return
        }
        
        if !result.contains(sum) {
            result.append(sum)
        }
        
        if x > 1 {
            helper(x, y, powerX + 1, powerY, bound, &result)
        }
        
        if y > 1 {
            helper(x, y, powerX, powerY + 1, bound, &result)
        }
    }
}
