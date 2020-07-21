//
//  S32.swift
//  lcof
//
class S32I {
    // queue, O(N) for time and space
    func levelOrder(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        guard let node = root else {
            return result
        }

        var queue = [TreeNode]()
        queue.append(node)
        while queue.count > 0 {
            var newQueue = [TreeNode]()
            for tn in queue {
                result.append(tn.val)
                if let ln = tn.left {
                    newQueue.append(ln)
                }

                if let rn = tn.right {
                    newQueue.append(rn)
                }
            }
            queue = newQueue
        }

        return result
    }
}
