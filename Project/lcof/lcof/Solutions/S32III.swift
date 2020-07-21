//
//  S32III.swift
//  lcof
//
class S32III {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        guard let node = root else {
            return result
        }
        var queue = [node]
        while queue.count > 0 {
            let index = result.count
            result.append([Int]())
            var newQueue = [TreeNode]()
            for n in queue {
                if index % 2 == 0 {
                    result[index].append(n.val)
                } else {
                    result[index].insert(n.val, at: 0)
                }
                
                if let ln = n.left {
                    newQueue.append(ln)
                }

                if let rn = n.right {
                    newQueue.append(rn)
                }
            }
            queue = newQueue
        }

        return result
    }
}
