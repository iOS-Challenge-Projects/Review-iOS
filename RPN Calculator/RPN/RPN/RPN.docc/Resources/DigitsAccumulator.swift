//
//  DigitsAccumulator.swift
//  
//
//  Created by FGT MAC on 2/12/22.
//

import Foundation

public struct DigitAccumulator {
    
    public init() {}
    
    public enum Digit: Equatable {
        case decimalPoint
        case number(Int)
    }
    
    public var digits = [Digit]()
    
    public enum DigitAccumulatorError: Error {
    case extraDeciamlPoint
    case invalidDigitNumberValue
    }
}
