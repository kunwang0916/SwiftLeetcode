//
//  Easy257.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/27/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 257. Binary Tree Paths
 https://leetcode.com/problems/binary-tree-paths/
 space:  O(Height of tree) in worst case is O(n)
 time: O(n)
 **/

import UIKit

public class Easy257: NSObject {
    public func binaryTreePaths(_ root: TreeNode?) -> [String] {
        if root == nil {
            return []
        }
        
        if root!.left == nil && root!.right == nil {
            return [String(root!.val)]
        }
        
        var result = [String]()
        let ltp = binaryTreePaths(root?.left)
        let connector = "->"
        for str in ltp {
            result.append(String(root!.val) + connector + str)
        }
        
        let rtp = binaryTreePaths(root?.right)
        for str in rtp {
            result.append(String(root!.val) + connector + str)
        }
        return result
    }
}
