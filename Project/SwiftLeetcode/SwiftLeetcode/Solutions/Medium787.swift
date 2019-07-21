//
//  Medium787.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/17/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 787. Cheapest Flights Within K Stops
 https://leetcode.com/problems/cheapest-flights-within-k-stops/
 time: O(K * len(flights))
 space: O(n)
 **/

import UIKit

class Medium787: NSObject {
    func findCheapestPrice(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ K: Int) -> Int {
        return dicSolotion(n, flights, src, dst, K)
//        return bellmanford(n, flights, src, dst, K)
    }
    
    
    func dicSolotion(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ K: Int) -> Int {
        var prices = [Int:Int]()
        prices[src] = 0
        
        for _ in 0...K {
            var tmpPrices = prices
            for flight in flights {
                let (u, v, w) = (flight[0], flight[1], flight[2])
                guard let price = prices[u] else {
                    continue
                }
                tmpPrices[v] = min(tmpPrices[v] ?? Int.max, price + w)
            }
            prices = tmpPrices
        }
        
        guard let p = prices[dst] else {
            return -1
        }
        
        return p
    }
    
    /**
     time: O(K * len(flights))
     space: O(n)
     **/
    func bellmanford(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ K: Int) -> Int {
        var prices = Array(repeating: Int.max, count: n);
        // marking start point
        prices[src] = 0
        // k steps
        for _ in 0...K {
            // copy so we keep the prices change for each stops
            var tmp = prices
            for flight in flights {
                let (cur, next, price) = (flight[0], flight[1], flight[2])
                if (prices[cur] == Int.max) {
                    // not visited yet
                    continue
                }
                // update the price to min for the "next"
                tmp[next] = min(tmp[next], prices[cur] + price)
            }
            // copy back to update prices for step i
            prices = tmp
        }
        
        if prices[dst] == Int.max {
            // can't reach in K stops
            return -1
        }
        return prices[dst]
    }

    /**
     improvement:
     Dijkstra's algorithm, O(len(flights) + NlogN)
     need PriorityQueue, so it's a little bit hard to implement in Swift
     **/
    
}
