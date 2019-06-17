//
//  Ellipsize.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/16/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

public enum EllipsisPosition {
    case START
    case MIDDLE
    case END
}

public class Ellipsize: NSObject {
    public func ellipsize(_ str: String, _ w: Int, _ position: EllipsisPosition) -> String {
        if str.count <= w {
            return str
        }
        
        if position == .END {
            return str.prefix( w - 3) + "..."
        } else if position == .START {
            return "..." + str.suffix( w - 3)
        } else {
            // trick point
            let ln = (w - 3) / 2
            let rn = (w - 3) - ln
            return str.prefix(ln) + "..."  + str.suffix(rn)
        }
    }
}
