//
//  ColorChooserViewController.swift
//  DelegatePractice
//
//  Created by FGT MAC on 3/16/21.
//

import UIKit

protocol ColorChangeProtocol {
    func choosenColor(choosenColor: UIColor)
}

class ColorChooserViewController: UIViewController {

    //MARK: - Properties
    var delegate: ColorChangeProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func redButton(_ sender: UIButton) {
        delegate?.choosenColor(choosenColor: .red)
        dismiss(animated: true)
    }
    
    @IBAction func blackButton(_ sender: UIButton) {
        delegate?.choosenColor(choosenColor: .black)
        dismiss(animated: true)
    }
    
}
