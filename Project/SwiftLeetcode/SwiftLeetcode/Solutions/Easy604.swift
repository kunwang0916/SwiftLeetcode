//
//  Easy604.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/14/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 604. Design Compressed String Iterator
 https://leetcode.com/problems/design-compressed-string-iterator/
 time: O(1) for function call
 space: O(1)
 **/

import UIKit

class Easy604: NSObject {
    class StringIterator {
        var currentP = 0
        var character = Character(" ")
        var charCount = 0
        var sArray:[Character]
        
        init(_ compressedString: String) {
            self.sArray = Array(compressedString)
        }
        
        func next() -> Character {
            if self.hasNext() == false {
                return Character(" ")
            }
            if self.charCount == 0 {
                self.character = self.sArray[self.currentP]
                self.currentP += 1
                while self.currentP < self.sArray.count && self.sArray[self.currentP].isNumber {
                    if let n = Int(String(self.sArray[self.currentP])) {
                        self.charCount = self.charCount * 10 + n
                    }
                    self.currentP += 1
                }
            }
            
            self.charCount -= 1
            return self.character
        }
        
        func hasNext() -> Bool {
            return self.currentP < self.sArray.count || self.charCount > 0
        }
    }
}
