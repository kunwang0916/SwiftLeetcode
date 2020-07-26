//
//  S54.swift
//  lcof
//

class S54 {
    var count: Int = 0
    var result: TreeNode?
    func kthLargest(_ root: TreeNode?, _ k: Int) -> Int {
        self.count = k
        dfs(root)
        return self.result!.val
    }

    private func dfs(_ node: TreeNode?) {
        guard let n = node else {
            return
        }

        dfs(n.right)
        if self.count == 0 {
            return
        }
        self.count -= 1
        if self.count == 0 {
            self.result = n
            return
        }
        dfs(n.left)
    }
}
