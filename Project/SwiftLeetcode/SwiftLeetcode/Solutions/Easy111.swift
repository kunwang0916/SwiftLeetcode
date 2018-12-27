//
//  Easy111.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/26/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 https://leetcode.com/problems/minimum-depth-of-binary-tree/
 111. Minimum Depth of Binary Tree
 space: O(N)
 time: O(N)
 **/
 

import UIKit

class Easy111: NSObject {
    func minDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        let lDepth = minDepth(root?.left)
        let rDepth = minDepth(root?.right)
        if lDepth == 0 {
            return rDepth + 1
        }
        if rDepth == 0 {
            return lDepth + 1
        }
        return min(lDepth, rDepth) + 1
    }
}
