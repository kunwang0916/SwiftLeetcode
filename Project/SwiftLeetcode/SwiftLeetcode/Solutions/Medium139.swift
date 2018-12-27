//
//  Medium139.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/6/18.
//  Copyright © 2018 K W. All rights reserved.
//

import UIKit

public class Medium139: NSObject {
    public class func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        if s.isEmpty {
            return true
        }
        
        if wordDict.count == 0 {
            return false
        }
        
        var wordArray = Array.init(repeating: false, count: s.count + 1)
        wordArray[0] = true
    
        for i in 1...s.count {
            for j in stride(from: i-1, through: 0, by: -1) {
                let fromIndex = s.index(s.startIndex, offsetBy: j)
                let toIndex = s.index(s.startIndex, offsetBy: i)
                let subStr = s[fromIndex..<toIndex]
                if wordArray[j] && wordDict.contains(String(subStr)) {
                    wordArray[i] = true
                    break
                }
            }
        }
        
        return wordArray[s.count];
    }
}
