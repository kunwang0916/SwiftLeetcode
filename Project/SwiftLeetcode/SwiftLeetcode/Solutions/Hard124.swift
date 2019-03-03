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
    var maxSum = 0
    func maxPathSum(_ root: TreeNode?) -> Int {
        guard let r = root else {
            return 0
        }
        maxSum = r.val
        _ = dfs(root);
        return maxSum;
    }
    
    func dfs(_ root: TreeNode?)-> Int {
        guard let r = root else {
            return 0
        }
        
        let leftMaxSum = dfs(r.left)
        let rightMaxSum = dfs(r.right)
        
        var sumNode = r.val
        if leftMaxSum > 0 {
            sumNode += leftMaxSum
        }
        
        if rightMaxSum > 0 {
            sumNode += rightMaxSum
        }
        
        self.maxSum = max(sumNode, self.maxSum)
        
        if leftMaxSum < 0 && rightMaxSum < 0 {
            return r.val
        } else {
            return max(leftMaxSum, rightMaxSum) + r.val
        }
    }
}
