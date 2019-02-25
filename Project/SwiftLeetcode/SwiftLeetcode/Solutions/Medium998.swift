//
//  Medium998.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/24/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 998. Maximum Binary Tree II
 https://leetcode.com/problems/maximum-binary-tree-ii/
 time: O(N)
 space: O(N)
 **/

import UIKit

class Medium998: NSObject {
    func insertIntoMaxTree(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        if let n = root {
            if n.val > val {
                n.right = insertIntoMaxTree(n.right, val)
                return n
            }
            
        }
        
        let node = TreeNode(val)
        node.left = root
        return node
    }
}
