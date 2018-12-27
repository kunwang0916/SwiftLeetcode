//
//  Medium951.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/26/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 951. Flip Equivalent Binary Trees
 https://leetcode.com/problems/flip-equivalent-binary-trees/
 **/

import UIKit

class Medium951: NSObject {
    func flipEquiv(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        if (root1 == nil && root2 == nil) {
            return true
        }
        
        if (root2 == nil || root2 == nil) {
            return false
        }
        
        if (root1?.val != root2?.val) {
            return false
        }
        
        let f1 = flipEquiv(root1?.left, root2?.right) && flipEquiv(root1?.right, root2?.left)
        let f2 = flipEquiv(root1?.left, root2?.left) && flipEquiv(root1?.right, root2?.right)
        
        return f1 || f2
    }
}
