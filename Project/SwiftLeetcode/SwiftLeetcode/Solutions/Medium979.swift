//
//  Medium979.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/19/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

public class Medium979: NSObject {
    var result = 0
    func distributeCoins(_ root: TreeNode?) -> Int {
        self.dfs(root)
        return self.result
    }
    
    func dfs(_ root: TreeNode?) -> Int {
        guard let node = root else {
            return 0
        }
        
        let l = dfs(node.left)
        let r = dfs(node.right)
        self.result += abs(l) + abs(r)
        return node.val + l + r - 1
    }
}
