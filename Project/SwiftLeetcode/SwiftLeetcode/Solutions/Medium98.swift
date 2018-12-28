//
//  Medium98.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/27/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 https://leetcode.com/problems/validate-binary-search-tree/
 98. Validate Binary Search Tree
 **/
import UIKit

class Medium98: NSObject {
    func isValidBST(_ root: TreeNode?) -> Bool {
        return isValidBST(root, Int.min, Int.max)
    }
    
    func isValidBST(_ root: TreeNode?, _ minValue: Int, _ maxValue: Int) -> Bool {
        if (root == nil) {
            return true
        }
        
        if (root!.val <= minValue || root!.val >= maxValue) {
            return false
        }
        
        return isValidBST(root!.left, minValue, root!.val) && isValidBST(root!.right, root!.val, maxValue)
    }
}
