//
//  Easy104.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/26/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 https://leetcode.com/problems/maximum-depth-of-binary-tree/
 104. Maximum Depth of Binary Tree
 Time: O(N)
 Space: O(N)
 **/

import UIKit

class Easy104: NSObject {
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        return max(maxDepth(root?.left), maxDepth(root?.right)) + 1;
    }
}
