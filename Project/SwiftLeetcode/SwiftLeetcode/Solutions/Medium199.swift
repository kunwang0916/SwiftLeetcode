//
//  Medium199.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/26/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 199. Binary Tree Right Side View
 https://leetcode.com/problems/binary-tree-right-side-view/
 time: O(N)
 space: O(height of Tree), average O(LogN), recursion stack
 **/
import UIKit

class Medium199: NSObject {
    var result = [Int]()
    func rightSideView(_ root: TreeNode?) -> [Int] {
        dfs(root, 0)
        return result
    }
    
    func dfs(_ root: TreeNode?, _ depth: Int) {
        if root == nil {
            return
        }
        
        if result.count == depth {
            if let v = root?.val {
                result.append(v)
            }
        }
        dfs(root?.right, depth+1)
        dfs(root?.left, depth+1)
    }
}
