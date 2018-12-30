//
//  Candies.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/29/18.
//  Copyright © 2018 K W. All rights reserved.
//

import UIKit
import Foundation
//import Glibc

class Candies: NSObject {
    
    public func solution(_ T : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        var types:[Int:Int] = [:]
        var count = T.count / 2
        for i in 0..<T.count {
            if types[T[i]] != nil {
                count -= 1
            } else {
                types[T[i]] = 1
            }
        }
        
        if (count <= 0) {
            return types.keys.count
        }
        
        return types.keys.count - count
    }
}
