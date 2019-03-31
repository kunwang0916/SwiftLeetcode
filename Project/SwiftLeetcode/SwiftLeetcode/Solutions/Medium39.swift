//
//  Medium39.swift
//  SwiftLeetcode
//
//  Created by roosky on 3/29/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

public class Medium39: NSObject {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        var tempList = [Int]()
        var candidates = candidates
        backTrace(&candidates, &result, &tempList, target, 0)
        return result;
    }
    
    func backTrace(_ candidates: inout [Int], _ result: inout [[Int]], _ tempList: inout [Int], _ leftVal: Int, _ fromIndex: Int) {
        if leftVal < 0 {
            return
        } else if leftVal == 0 {
            result.append(Array(tempList))
            return
        } else {
            for i in fromIndex..<candidates.count {
                tempList.append(candidates[i])
                backTrace(&candidates, &result, &tempList, leftVal - candidates[i], i)
                tempList.removeLast()
            }
        }
    }
}
