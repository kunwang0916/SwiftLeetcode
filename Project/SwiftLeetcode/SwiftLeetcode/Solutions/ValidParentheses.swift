//
//  ValidParentheses.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/18/20.
//  Copyright © 2020 K W. All rights reserved.
//

import UIKit

class ValidParentheses: NSObject {
    public func valid(_ str: String) -> String {
        var result = ""
        var count = 0
        var array = Array(str)
        
        for i in 0..<array.count {
            if array[i] == "(" {
                count += 1
            } else if array[i] == ")" {
                count -= 1
                if count < 0 {
                    continue
                }
            }
            result += String(array[i])
        }
        
        array = Array(result)
        result = ""
        count = 0
        for i in (0..<array.count).reversed() {
            if array[i] == ")" {
                count += 1
            } else if array[i] == "(" {
                count -= 1
                if count < 0 {
                    continue
                }
            }
            result = String(array[i]) + result
        }
        
        return result;
    }
}
