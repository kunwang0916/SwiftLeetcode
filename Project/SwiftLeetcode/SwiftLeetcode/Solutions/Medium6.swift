//
//  Medium6.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/10/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 6. ZigZag Conversion
 https://leetcode.com/problems/zigzag-conversion/
 time: O(N)
 space: O(N)
 **/
import UIKit

public class Medium6: NSObject {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        var rowStr = Array(repeating: "", count: numRows)
        
        var currentRow = 0
        var increase = false
        for c in s {
            rowStr[currentRow] += String(c)
            if (currentRow == 0 || currentRow == numRows - 1) {
                increase = !increase
            }
            if increase {
                currentRow += 1
            } else {
                currentRow -= 1
            }
        }
        
        var result = ""
        for s in rowStr {
            result += s
        }
        
        return result
    }
}
