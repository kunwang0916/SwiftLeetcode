//
//  Medium366.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/13/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 366. Find Leaves of Binary Tree
 https://leetcode.com/problems/find-leaves-of-binary-tree/
 time: O(N)
 space: O(N)
 **/

import UIKit

class Medium366: NSObject {
    func findLeaves(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        _ = dfs(&result, root)
        return result
    }
    
    
    func dfs(_ result: inout [[Int]], _ node: TreeNode?) -> Int {
        guard let node = node else { return -1 }
        let levelLeft = dfs(&result, node.left)
        let levelRight = dfs(&result, node.right)
        let level = max(levelLeft, levelRight) + 1
        
        while result.count <= level {
            result.append([Int]())
        }
        
        result[level].append(node.val)
        return level
    }
    
}
