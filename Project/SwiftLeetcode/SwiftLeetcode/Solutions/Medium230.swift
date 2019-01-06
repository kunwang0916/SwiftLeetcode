//
//  Medium230.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/5/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 230. Kth Smallest Element in a BST
 https://leetcode.com/problems/kth-smallest-element-in-a-bst/
 time: O(N)
 space: O(1)
 **/
import UIKit

class Medium230: NSObject {
    var result = 0
    var k = 0
    
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        self.result = 0
        self.k = k
        dfs(root)
        return self.result
    }
    
    func dfs(_ root: TreeNode?) {
        guard let node = root else {
            return
        }
        
        dfs(node.left)
        self.k -= 1
        if self.k == 0 {
            self.result = node.val
            return
        }
        dfs(node.right)
    }
}
