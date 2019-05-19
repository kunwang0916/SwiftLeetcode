//
//  Medium1026.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/13/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

class Medium1026: NSObject {
    var maxDiff = 0
    func maxAncestorDiff(_ root: TreeNode?) -> Int {
        guard let node = root else {
            return 0
        }
        
        dfs(node, node.val, node.val)
        return maxDiff;
    }
    
    func dfs(_ root: TreeNode, _ maxV: Int, _ minV: Int) {
        maxDiff = max(abs(maxV - root.val), abs(minV - root.val), maxDiff);
        let newMaxV = max(maxV, root.val)
        let newMinV = min(minV, root.val)
        
        if let leftNode = root.left {
            dfs(leftNode, newMaxV, newMinV)
        }
        
        if let rightNode = root.right {
            dfs(rightNode, newMaxV, newMinV)
        }
    }
}
