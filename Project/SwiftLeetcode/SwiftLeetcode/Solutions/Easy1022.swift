//
//  Easy1022.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/6/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

class Easy1022: NSObject {
    var sum = 0
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        dfs(root, "")
        return sum
    }
    
    func dfs(_ root: TreeNode?, _ pre: String) {
        guard let node = root else {
            return
        }
        
        let newPre = pre + String(node.val)
        if node.left == nil && node.right == nil {
            self.sum += strToNum(newPre)
            return
        }
        
        dfs(node.left, newPre)
        dfs(node.right, newPre)
    }
    
    func strToNum(_ str: String) -> Int {
        if str.count == 0 {
            return 0
        }
        var result = 0
        var base = 1
        for c in str.reversed() {
            if c == "1" {
                result += base
            }
            base *= 2
        }
        return result
    }
}
