//
//  Easy1021.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/6/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

class Easy1021: NSObject {
    func removeOuterParentheses(_ S: String) -> String {
        var count = 0
        var result = ""
        for c in S {
            if c == "(" {
                if count > 0 {
                    result += String(c)
                }
                count += 1
            } else if c == ")" {
                if count > 1 {
                    result += String(c)
                }
                count -= 1
            }
        }
        
        return result
    }
}
