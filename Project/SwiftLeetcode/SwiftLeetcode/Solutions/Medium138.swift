//
//  Medium138.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/17/20.
//  Copyright © 2020 K W. All rights reserved.
//
/*
 138. Copy List with Random Pointer
 https://leetcode.com/problems/copy-list-with-random-pointer/
 time: O(N)
 space: O(N)
 */

import UIKit
public class Node {
    public var val: Int
    public var next: Node?
    public var random: Node?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
        self.random = nil
    }
}

class Medium138: NSObject {
    var memo = [Int: Node]()
    
    func copyRandomList(_ head: Node?) -> Node? {
        guard let h = head else {
            return nil
        }
        
        if let n = memo[h.val]{
            return n
        }
        
        let node = Node(h.val)
        memo[h.val] = node
        
        node.next = copyRandomList(h.next)
        node.random = copyRandomList(h.random)
        
        return node
    }
}
