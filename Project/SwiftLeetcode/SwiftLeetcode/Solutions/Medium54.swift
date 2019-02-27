//
//  Medium54.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/26/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 54. Spiral Matrix
 https://leetcode.com/problems/spiral-matrix/
 time: O(MN)
 space: O(MN)
 **/
import UIKit

public class Medium54: NSObject {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        if matrix.count == 0 || matrix[0].count == 0 {
            return []
        }
        
        if matrix.count == 1 {
            return matrix[0]
        }
        
        var result = [Int]()
        var tb = 0
        var bb = matrix.count - 1
        var lb = 0
        var rb = matrix[0].count - 1
        var i = 0
        while tb <= bb && lb <= rb {
            i = lb
            while i <= rb {
                result.append(matrix[tb][i])
                i += 1
            }
            
            i = tb + 1
            while i <= bb {
                result.append(matrix[i][rb])
                i += 1
            }
            
            if (lb < rb && tb < bb) {
                i = rb - 1
                while i > lb {
                    result.append(matrix[bb][i])
                    i -= 1
                }
                
                i = bb
                while i > tb {
                    result.append(matrix[i][lb])
                    i -= 1
                }
            }
            
            rb -= 1
            bb -= 1
            tb += 1
            lb += 1
        }
        return result
    }
}
