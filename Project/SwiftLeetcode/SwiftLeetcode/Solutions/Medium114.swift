//
//  Medium114.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/1/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 114. Flatten Binary Tree to Linked List
 https://leetcode.com/problems/flatten-binary-tree-to-linked-list/
 time: O(N)
 space: O(1)
 **/

import UIKit

class Medium114: NSObject {
    func flatten(_ root: TreeNode?) {
        var current = root
        while current != nil {
            // go left first
            if current?.left != nil {
                var pre = current?.left
                while pre?.right != nil {
                    pre = pre?.right
                }
                pre?.right = current?.right
                current?.right = current?.left
                current?.left = nil
            } else {
                current = current?.right ?? nil
            }
        }
    }
}
