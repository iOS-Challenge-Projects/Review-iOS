//
//  ViewController.swift
//  DelegatePractice
//
//  Created by FGT MAC on 3/16/21.
//

import UIKit



class ViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SelectColor"{
            if let ColorVC = segue.destination as? ColorChooserViewController{
                ColorVC.delegate = self
            }
        }
    }
    

}

extension ViewController: ColorChangeProtocol{
    func choosenColor(choosenColor: UIColor) {
        view.backgroundColor = choosenColor
        if choosenColor == UIColor.red{
            colorLabel.text = "Red"
        }else{
            colorLabel.text = "Black"
            
        }
    }
    
}

