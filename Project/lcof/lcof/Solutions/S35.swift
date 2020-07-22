//
//  S35.swift
//  lcof
//

import Foundation

public class Node: Hashable {
    public var val: Int
    public var next: Node?
    public var random: Node?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
        self.random = nil
    }
        
    public static func == (lhs: Node, rhs: Node) -> Bool {
        if lhs.val != rhs.val {
            return false
        }
        
        return lhs.next == rhs.next && lhs.random == rhs.next
    }
    
    public var hashValue : Int {
         get {
             return self.val
         }
     }
}

class S35 {
    var map = [Node: Node]()

    func copyRandomList(_ head: Node?) -> Node? {
        guard let head = head else {
            return nil
        }

        if let n = map[head] {
            return n
        }

        let node = Node(head.val)
        map[head] = node
        node.next = copyRandomList(head.next)
        node.random = copyRandomList(head.random)
        
        return node
    }
}
