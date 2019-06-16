//
//  Medium251.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/15/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

class Medium251: NSObject {
    class Vector2D {
        var flatArray:[Int] = []
        var curIndex = 0
        
        init(_ v: [[Int]]) {
            self.flatArray = v.reduce([], +)
        }
        
        func next() -> Int {
            if (self.hasNext()) {
                let val = flatArray[self.curIndex]
                self.curIndex += 1
                return val
            }
            return -1
        }
        
        func hasNext() -> Bool {
            return curIndex < flatArray.count
        }
    }
}
