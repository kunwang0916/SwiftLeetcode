//
//  S55I.swift
//  lcof
//
class S55I {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let n = root else {
            return 0
        }

        return max(maxDepth(n.right), maxDepth(n.left)) + 1
    }
}
