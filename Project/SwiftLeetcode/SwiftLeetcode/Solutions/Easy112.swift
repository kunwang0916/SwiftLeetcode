//
//  Easy112.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/26/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 https://leetcode.com/problems/path-sum/
 112. Path Sum
 space: O(N)
 time: O(N)
 **/

import UIKit

class Easy112: NSObject {
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        if root == nil {
            return false
        }
        // special case.
        if root?.left == nil && root?.right == nil {
            return root?.val == sum
        }
        
        let nextSum:Int = sum - root!.val
        return hasPathSum(root?.left, nextSum) || hasPathSum(root?.right, nextSum)
    }
}
