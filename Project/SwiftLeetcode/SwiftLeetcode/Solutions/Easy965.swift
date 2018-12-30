//
//  Easy965.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/29/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 965. Univalued Binary Tree
 https://leetcode.com/problems/univalued-binary-tree
 time: O(N)
 space: O(H) heigth of the tree
 **/

import UIKit

class Easy965: NSObject {
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        return isUnivalTree(root!, root!.val)
    }
    
    func isUnivalTree(_ root: TreeNode?, _ value: Int) -> Bool {
        if root == nil {
            return true
        }
        
        if (root?.val != value) {
            return false
        }
        
        return isUnivalTree(root?.left, value) && isUnivalTree(root?.right, value)
    }
}
