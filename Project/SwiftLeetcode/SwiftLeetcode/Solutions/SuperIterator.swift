//
//  SuperIterator.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/12/19.
//  Copyright © 2019 K W. All rights reserved.
//
public struct SuperIterator: IteratorProtocol {
    var array:[Any]
    var currentIndex:Int
    
    init(_ a: [Any]) {
        self.array = a
        currentIndex = 0
    }
    
    public mutating func next() -> Any? {
        if self.currentIndex == array.count {
            return nil
        }
        var next = self.array[currentIndex]
        while next is Array<Any> {
            let n = next as! Array<Any>
            self.array.remove(at: currentIndex)
            self.array.insert(contentsOf: n, at: currentIndex)
            next = self.array[currentIndex]
        }
        
        self.currentIndex += 1
        return next
    }
    
    public mutating func all() -> [Any] {
        var all = [Any]()
        while let t = self.next() {
            all.append(t)
        }
        return all;
    }
}
