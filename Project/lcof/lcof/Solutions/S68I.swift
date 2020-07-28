//
//  S68I.swift
//  lcof
//
class S68I {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let r = root else {
            return nil
        }

        if r.val < min(p!.val, q!.val) {
            return lowestCommonAncestor(r.right, p, q)
        } else if r.val > max(p!.val, q!.val) {
            return lowestCommonAncestor(r.left, p, q)
        } else {
            return r
        }
    }
}
