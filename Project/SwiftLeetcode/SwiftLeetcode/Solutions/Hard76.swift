//
//  Hard76.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/19/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 76. Minimum Window Substring
 https://leetcode.com/problems/minimum-window-substring
 time: O(S+T)
 space: O(S+T)
 **/

import UIKit

public class Hard76: NSObject {
    public func minWindow(_ s: String, _ t: String) -> String {
        var result = ""
        if t.count > s.count {
            return result
        }
        
        var requireCountDic:[Character: Int] = [:]
        var windowCountDic:[Character: Int] = [:]
        for c in t {
            requireCountDic[c] = (requireCountDic[c] ?? 0) + 1
            windowCountDic[c] = 0
        }
        let requireNum = requireCountDic.keys.count
        var matchedNum = 0
        
        let sArray = Array(s)
        var head = 0
        for tail in 0..<sArray.count {
            let tc = sArray[tail]
            guard var tv = windowCountDic[tc] else {
                continue;
            }
            tv += 1
            windowCountDic[tc] = tv
            if tv == requireCountDic[tc] {
                matchedNum += 1
            }
            
            while (matchedNum == requireNum) {
                let hc = sArray[head]
                if let hv = windowCountDic[hc] {
                    if hv == requireCountDic[hc] {
                        matchedNum -= 1
                        let len = tail - head + 1
                        if result.count == 0 || len < result.count {
                            result = String(sArray[head...tail])
                        }
                    }
                    windowCountDic[hc] = hv - 1
                }
                head += 1
            }
        }
        return result
    }
}
