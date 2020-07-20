//
//  S27.swift
//  lcof
//

class S27 {
    func mirrorTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }
        
        let node = TreeNode(root.val)

        node.left = mirrorTree(root.right)
        node.right = mirrorTree(root.left)

        return node
    }
}
