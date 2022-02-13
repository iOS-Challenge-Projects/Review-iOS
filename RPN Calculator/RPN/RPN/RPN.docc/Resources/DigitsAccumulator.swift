//
//  DigitsAccumulator.swift
//  
//
//  Created by FGT MAC on 2/12/22.
//

import Foundation

public struct DigitAccumulator {
    
    public init() {}
    
    //MARK: - Properties
    
    public enum Digit: Equatable {
        case decimalPoint
        case number(Int)
    }
    
    public var digits = [Digit]()
    
    public enum DigitAccumulatorError: Error {
        case extraDeciamlPoint
        case invalidDigitNumberValue
    }
    
    //MARK: - Methods
    
    public func add(digit: Digit) throws {
        switch digit {
        case .decimalPoint:
            if digits.contains(.decimalPoint){
                throw DigitAccumulatorError.extraDeciamlPoint
            }
        case .number(let value):
            if value < 0 || 9 < value {
                throw DigitAccumulatorError.invalidDigitNumberValue
            }
        }
        digits.append(digit)
    }
    
    public mutating func clear(){
        digits.removeAll()
    }
    
    func result() -> Double? {
        let string = digits.map { (digit) -> String in
            switch digit {
            case .decimalPoint:
                return "."
            case .number(let value):
                return String(value)
        }
        }.joined()
        return Double(string)
}
