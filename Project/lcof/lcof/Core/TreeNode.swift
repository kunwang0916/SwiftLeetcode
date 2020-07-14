//
//  TreeNode.swift
//  lcof
//

import Foundation

/**
* Definition for a binary tree node.
**/
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

