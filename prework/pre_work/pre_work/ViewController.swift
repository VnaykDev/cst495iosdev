//
//  ViewController.swift
//  pre_work
//
//  Created by Vinayak Iyer on 9/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipPercentAdjust: UISegmentedControl!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipPercentAdjust.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", total)
    }
}

