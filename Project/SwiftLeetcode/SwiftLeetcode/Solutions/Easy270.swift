//
//  Easy270.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/15/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 270. Closest Binary Search Tree Value
 https://leetcode.com/problems/closest-binary-search-tree-value/
 time: O(n)
 space: O(1)
 
 **/
import UIKit

class Easy270: NSObject {
    var closed = Int.min
    var distance = Double(Int.max)
    
    func closestValue(_ root: TreeNode?, _ target: Double) -> Int {
        preOrder(root, target)
        return self.closed
    }
    
    func preOrder(_ root: TreeNode?, _ target: Double) {
        if root == nil {
            return
        }
        let currentDistance = abs(Double(root!.val) - target)
        if currentDistance < self.distance {
            self.closed = root!.val
            self.distance = currentDistance
        }
        preOrder(root?.left, target)
        preOrder(root?.right, target)
    }
}
