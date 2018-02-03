//
//  Wage.swift
//  window-shopper
//
//  Created by Prabhpahul singh on 2018-02-02.
//  Copyright © 2018 Prabhpahul singh. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(forWage wage: Double , andPrice price:Double)-> Int {
        return Int(ceil(price / wage))
    }
}
