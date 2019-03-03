//
//  Hard124.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 3/2/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit
/**
124. Binary Tree Maximum Path Sum
https://leetcode.com/problems/binary-tree-maximum-path-sum/
 time: O(n)
 space: O(logn), height of the tree
**/

class Hard124: NSObject {
    var maxSum = Int.min
    func maxPathSum(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        _ = dfs(root);
        return maxSum;
    }
    
    func dfs(_ root: TreeNode?)-> Int {
        guard let r = root else {
            return 0
        }
        
        let leftMaxSum = max(dfs(r.left), 0)
        let rightMaxSum = max(dfs(r.right), 0)
        let sumNode = r.val + leftMaxSum + rightMaxSum;
        self.maxSum = max(sumNode, self.maxSum)
        
        return max(leftMaxSum, rightMaxSum) + r.val
    }
}
