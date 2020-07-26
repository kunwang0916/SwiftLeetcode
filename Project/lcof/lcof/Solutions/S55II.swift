//
//  S55II.swift
//  lcof
//

class S55II {
    func isBalanced(_ root: TreeNode?) -> Bool {
        return rec(root) != -1
    }

    private func rec(_ node: TreeNode?) -> Int {
        guard let n = node else {
            return 0
        }

        let rn = rec(n.right)
        if rn == -1 {
            return -1
        }

        let ln = rec(n.left)
        if ln == -1 {
            return -1
        }

        if abs(rn - ln) < 2 {
            return max(rn, ln) + 1
        }

        return -1
    }
}
