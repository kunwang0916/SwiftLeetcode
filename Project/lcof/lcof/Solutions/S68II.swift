//
//  S68II.swift
//  lcof
//
class S68II {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let n = root else {
            return nil
        }
        if n.val == p?.val || n.val == q?.val {
            return root
        }

        let ln = lowestCommonAncestor(n.left, p, q)
        let rn = lowestCommonAncestor(n.right, p, q)
        
        if ln == nil {
            return rn
        }

        if rn == nil {
            return ln
        }

        return root
    }
}
