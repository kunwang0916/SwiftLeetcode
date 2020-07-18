//
//  S26.swift
//  lcof
//
class S26 {
    func isSubStructure(_ A: TreeNode?, _ B: TreeNode?) -> Bool {
        guard let B = B, let A = A else {
            return false
        }

        return isSame(A, B) || isSubStructure(A.left, B) || isSubStructure(A.right, B)
    }

    func isSame(_ A: TreeNode?, _ B: TreeNode?) -> Bool {
        if B == nil {
            return true
        }

        if A == nil {
            return false
        }

        if A!.val != B!.val {
            return false
        }

        return isSame(A!.left, B!.left) && isSame(A!.right, B!.right)
    }
}
