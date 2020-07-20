//
//  S28.swift
//  lcof
//

class S28 {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        return isMirror(root.left, root.right)
    }

    private func isMirror(_ a: TreeNode?, _ b: TreeNode?) -> Bool {
        if a == nil && b == nil {
            return true
        }

        guard let a = a, let b = b else {
            return false
        }

        if a.val != b.val {
            return false
        }

        return isMirror(a.left, b.right) && isMirror(a.right, b.left)
    }
}
