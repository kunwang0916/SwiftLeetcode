//
//  ListNode.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/3/18.
//  Copyright © 2018 K W. All rights reserved.
//

import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    //4->2->1->3
    public class func initWithString(_ str: String) -> ListNode{
        let array = str.replacingOccurrences(of: "->", with: ">").split(separator: ">")
        let head = ListNode(0)
        var c = head
        for s in array {
            if let n = Int(s) {
                c.next = ListNode(n)
                c = c.next!
            }
        }
        
        return head.next!
    }
    
    public func toString() -> String {
        var str = String(self.val)
        if let n = self.next {
            str += "->" + n.toString()
        }
        return str
    }
}
