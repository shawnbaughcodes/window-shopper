//
//  Wage.swift
//  window-shopper
//
//  Created by Shawn Baugh on 4/20/19.
//  Copyright © 2019 Shawn Baugh. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice: Double) -> Int {
        return Int(ceil (andPrice / wage))
    }
}
