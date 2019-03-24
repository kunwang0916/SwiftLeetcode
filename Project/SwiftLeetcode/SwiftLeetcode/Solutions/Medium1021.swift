//
//  Medium1021.swift
//  SwiftLeetcode
//
//  Created by roosky on 3/23/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 1021. Best Sightseeing Pair
 https://leetcode.com/problems/best-sightseeing-pair/
 Time: O(N)
 Space: O(1)
 **/

import UIKit

class Medium1021: NSObject {
    func maxScoreSightseeingPair(_ A: [Int]) -> Int {
        var maxScore = Int.min
        var leftHighScoreIndex = 0
        var leftHighScoreValue = A[leftHighScoreIndex]
        for i in 1..<A.count {
            maxScore = max(leftHighScoreValue + A[i] + leftHighScoreIndex - i, maxScore)
            if (A[i] - leftHighScoreValue) + (i - leftHighScoreIndex) >= 0 {
                leftHighScoreIndex = i
                leftHighScoreValue = A[i]
            }
        }
        return maxScore
    }
}
