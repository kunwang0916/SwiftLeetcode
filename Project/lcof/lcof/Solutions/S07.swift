//
//  S07.swift
//  lcof
//

import Foundation

class S07 {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if preorder.count == 0 {
            return nil
        }

        if preorder.count == 1 {
            return TreeNode(preorder[0])
        }

        let val = preorder[0]
        let node = TreeNode(val)
        let valInorderIndex = inorder.firstIndex(of:val)!
        if valInorderIndex > 0 {
            let leftInorderArray = Array(inorder[0..<valInorderIndex])
            let leftPreorderArray = Array(preorder[1...(leftInorderArray.count)])
            node.left = buildTree(leftPreorderArray, leftInorderArray)
        }

        if valInorderIndex < inorder.count - 1 {
            let rightInorderArray = Array(inorder[(valInorderIndex+1)..<inorder.count])
            let preStartIndex = (preorder.count - rightInorderArray.count)
            let rightPreorderArray = Array(preorder[preStartIndex..<preorder.count])
            node.right = buildTree(rightPreorderArray, rightInorderArray)
        }

        return node
    }
}
