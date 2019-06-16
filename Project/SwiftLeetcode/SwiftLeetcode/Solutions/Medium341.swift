//
//  Medium341.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/16/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
341. Flatten Nested List Iterator
https://leetcode.com/problems/flatten-nested-list-iterator/
 time: O(n)
 space: O(n)
**/
import UIKit

class Medium341: NSObject {
    class NestedIterator {
        var flattenList:[Int] = []
        var curIndex = 0
        
        init(_ nestedList: [NestedInteger]) {
            flatNestedList(nestedList)
        }
        
        func flatNestedList(_ nl: [NestedInteger]) {
            for n in nl {
                if n.isInteger() {
                    self.flattenList.append(n.getInteger())
                } else {
                    self.flatNestedList(n.getList())
                }
            }
        }
        
        func next() -> Int {
            let n = self.flattenList[curIndex]
            self.curIndex += 1
            return n
        }
        
        func hasNext() -> Bool {
            return self.curIndex < self.flattenList.count
        }
    }
}
