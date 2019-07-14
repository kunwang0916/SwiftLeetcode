//
//  Medium102.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/13/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 102. Binary Tree Level Order Traversal
 https://leetcode.com/problems/binary-tree-level-order-traversal/
 time: O(N)
 space: O(N)
 **/
import UIKit

class Medium102: NSObject {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        
        guard let root = root else { return result }
        
        var queue = [TreeNode]()
        queue.append(root)
        
        while !queue.isEmpty {
            var newQueue = [TreeNode]()
            var line = [Int]()
            for node in queue {
                line.append(node.val)
                if let leftNode = node.left {
                    newQueue.append(leftNode)
                }
                
                if let rightNode = node.right {
                    newQueue.append(rightNode)
                }
            }
            result.append(line)
            queue = newQueue
        }
        
        return result
    }
}
