//
//  ViewController.swift
//  Calculator
//
//  Created by FGT MAC on 2/12/22.
//

import UIKit
import RPN

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: - Outlets
    @IBOutlet weak var textField: UITextField!
    
    
    //MARK: - Properties
    
    private let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.allowsFloats = true
        formatter.maximumIntegerDigits = 20
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 20
        return formatter;
    }()
    
    private var calculator = Calculator {
        didSet {
            if let value = calculator.topValue {
                textField.text = numberFormatter.string(from: value as NSNumber)
            }else{
                textField.text = ""
            }
        }
    }
    
    private var digitAccumulator = DigitAccumulator() {
        didSet {
            if let value = digitAccumulator.value() {
                textField.text = numberFormatter.string(from: value as NSNumber)
            }else{
                textField.text = ""
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self

    }
    
    //MARK: - Actions
    
    @IBAction func numberButtonTap(_ sender: UIButton) {
        try? digitAccumulator.add(digit: .number(sender.tag))
    }
    
    @IBAction func decimalButtonTap(_ sender: UIButton) {
        try? digitAccumulator.add(digit: .decimalPoint)
    }
    
    @IBAction func divideButtonTap(_ sender: UIButton) {
        calculator.push(operator: .divide)
    }
    
    @IBAction func multiplyButtonTap(_ sender: UIButton) {
        calculator.push(operator: .multiply)
    }
    
    @IBAction func subtractButtonTap(_ sender: UIButton) {
        calculator.push(operator: .substract)
    }
    
    @IBAction func addButtonTap(_ sender: UIButton) {
        calculator.push(operator: .add)
    }
    
    @IBAction func returnButtonTap(_ sender: UIButton) {
        if let value = digitAccumulator.value() {
            calculator.push(number: value)
        }
        digitAccumulator.clear()
    }
    
    //MARK: - Methods
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        calculator.clearStack()
        digitAccumulator.clear()
        return true
    }
}

