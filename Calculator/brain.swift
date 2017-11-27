//
//  brain.swift
//  Calculator
//
//  Created by Zick on 11/24/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import Foundation

struct Brain{
    
    var accumulator: Double?
    
    func performCalculation(_ symbol: String){
        
    }
    mutating func setOperand(_ operand: Double){
        var result: Double!{
            get {
                return accumulator
            }
        }
        accumulator = operand
        
    }
}
