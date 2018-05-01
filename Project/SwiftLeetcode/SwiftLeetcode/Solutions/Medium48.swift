//
//  Medium48.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/1/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 48. Rotate Image
 https://leetcode.com/problems/rotate-image/description/
 You are given an n x n 2D matrix representing an image.
 Rotate the image by 90 degrees (clockwise).
 **/

import UIKit

public class Medium48: NSObject {
    public class func rotate(_ matrix: inout [[Int]]) {
        if matrix.count == 0 || matrix[0].count == 0 {
            return
        }
        let n = matrix.count
        for layer in 0..<(n / 2) {
            for i in layer..<(n-layer-1) {
                let t = matrix[layer][i]
                matrix[layer][i] = matrix[n-i-1][layer]
                matrix[n-i-1][layer] = matrix[n-layer-1][n-i-1]
                matrix[n-layer-1][n-i-1] = matrix[i][n-layer-1]
                matrix[i][n-layer-1] = t
            }
        }
    }
}
