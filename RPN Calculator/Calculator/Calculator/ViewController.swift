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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self

    }
    
    //MARK: - Actions
    
    @IBAction func numberButtonTap(_ sender: UIButton) {
    }
    
    @IBAction func decimalButtonTap(_ sender: UIButton) {
    }
    
    @IBAction func divideButtonTap(_ sender: UIButton) {
    }
    
    @IBAction func multiplyButtonTap(_ sender: UIButton) {
    }
    
    @IBAction func subtractButtonTap(_ sender: UIButton) {
    }
    
    @IBAction func addButtonTap(_ sender: UIButton) {
    }
    
    @IBAction func returnButtonTap(_ sender: UIButton) {
    }
    
    //MARK: - Methods
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
}

