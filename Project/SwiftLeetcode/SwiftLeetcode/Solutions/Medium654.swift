//
//  Medium654.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/24/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 654. Maximum Binary Tree
 https://leetcode.com/problems/maximum-binary-tree/description/
 Given an integer array with no duplicates. A maximum tree building on this array is defined as follow:
 
 1. The root is the maximum number in the array.
 2. The left subtree is the maximum tree constructed from left part subarray divided by the maximum number.
 3. The right subtree is the maximum tree constructed from right part subarray divided by the maximum number.
 Construct the maximum tree by the given array and output the root node of this tree.
 
 Example 1:
 Input: [3,2,1,6,0,5]
 Output: return the tree root node representing the following tree:
 
      6
    /   \
   3     5
    \   /
     2 0
      \
       1
 Note:
 The size of the given array will be in the range [1,1000].
 
 **/
import UIKit

public class Medium654: NSObject {
    // recursion solution 
    // time: nLog(n) -> N^2
    // space: nLog(n) -> N^2
    public class func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
        if nums.count == 0 {
            return nil
        }
        // find maxvalue and it's index in the array
        let maxValue = nums.max()
        let maxIndex = nums.index(of: maxValue!)
        
        // dividing to 2 part from maxIndex
        let leftHalf:[Int] = Array(nums.prefix(upTo: maxIndex!))
        let rightHalf:[Int] = Array(nums.suffix(from: maxIndex! + 1))
        // construct the tree node
        let node = TreeNode(maxValue!)
        // recursion
        node.left = constructMaximumBinaryTree(leftHalf)
        node.right = constructMaximumBinaryTree(rightHalf)
        
        return node
    }
}
