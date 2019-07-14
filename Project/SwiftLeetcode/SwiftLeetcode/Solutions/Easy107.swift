//
//  Easy107.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/13/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 107. Binary Tree Level Order Traversal II
 https://leetcode.com/problems/binary-tree-level-order-traversal-ii/
 time: O(N)
 space: O(N)
 **/

import UIKit

class Easy107: NSObject {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        
        dfs(&result, root, 0)
        
        return result.reversed()
    }
    
    func dfs(_ result: inout [[Int]], _ node: TreeNode?, _ level: Int) {
        guard let node = node else { return }
        
        while result.count <= level {
            result.append([Int]())
        }
        
        result[level].append(node.val)
        
        dfs(&result, node.left, level + 1)
        dfs(&result, node.right, level + 1)
    }
    
}
