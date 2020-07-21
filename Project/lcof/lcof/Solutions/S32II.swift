//
//  S32II.swift
//  lcof
//
class S32II {
    
    // queue is also available and faster
    // time & space : O(N)
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        levelOrder(root, &result, 0)
        return result
    }

    private func levelOrder(_ node: TreeNode?, _ result: inout [[Int]], _ level: Int) {
        guard let node = node else {
            return
        }

        if level >= result.count {
            result.append([Int]())
        }
        result[level].append(node.val)

        levelOrder(node.left, &result, level+1)
        levelOrder(node.right, &result, level+1)
    }
}
