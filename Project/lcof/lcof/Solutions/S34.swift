//
//  S34.swift
//  lcof
//
class S34 {
    var result = [[Int]]()

    func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
        var path = [Int]()
        dfs(root, sum, &path)
        return result
    }

    func dfs(_ node: TreeNode?, _ target: Int, _ path: inout [Int]) {
        guard let node = node else {
            return
        }

        path.append(node.val)
        let nextTarget = target - node.val
        if node.left == nil && node.right == nil && nextTarget == 0 {
            result.append(path)
        } else {
            dfs(node.left, nextTarget, &path)
            dfs(node.right, nextTarget, &path)
        }
        path.removeLast()
    }
}
