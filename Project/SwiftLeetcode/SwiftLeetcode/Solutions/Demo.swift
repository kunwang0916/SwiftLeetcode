//
//  Demo.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/11/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

public class Demo: NSObject {
    public class func convert(_ char: Character) -> Int {
        var map:[Character: Int] = [:]
        map["0"] = 0
        map["1"] = 1
        map["2"] = 2
        map["3"] = 3
        map["4"] = 4
        
        return map[char] ?? 0
    }
}
