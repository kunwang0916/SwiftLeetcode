//
//  AverageWindow.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/23/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

public class AverageWindow: NSObject {
    private var numbers = [Int]()
    private let windowSize: Int
    private var currentIndex = 0
    private var sumValue = 0
    // dispatch queue also can handle the con-currency access
    private let queue = DispatchQueue(label: "AverageWindow")
    // nslock would be a simple way to handle the concurrency access
    private let lock = NSLock()
    
    init?(_ windowSize:Int) {
        if windowSize < 1 || windowSize > 1000 {
            // failable initializer
            return nil
        }
        
        self.windowSize = windowSize
    }
    
    private func averageWithQueue(_ num: Int) -> Double {
        var result = 0.0
        self.queue.sync {
            result = self.naiveAverage(num)
        }
        return result
    }
    
    private func averageWithNSLock(_ num: Int) ->  Double {
        lock.lock()
        let result = self.naiveAverage(num)
        lock.unlock()
        return result
    }
    
    private func naiveAverage(_ num: Int) -> Double {
        if self.numbers.count == windowSize {
            self.sumValue -= self.numbers[0]
            self.numbers.removeFirst()
        }
        self.numbers.append(num)
        self.sumValue += num
        return Double(self.sumValue) / Double(self.numbers.count)
    }
    
    public func avaregeWith(_ num: Int) -> Double {
        assert(self.numbers.count <= self.windowSize)
        let result = self.averageWithNSLock(num)
        assert(self.numbers.count <= self.windowSize)
        return result
    }
}
