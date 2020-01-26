//
//  ViewController.swift
//  tip app
//
//  Created by Kay Lab on 1/18/20.
//  Copyright © 2020 Kay Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var TotalLabel: UILabel!
    
    @IBOutlet weak var BillField: UITextField!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)

    }
    
    @IBAction func tipCalculator(_ sender: Any) {
       
        let bill = Double(BillField.text!) ?? 0
        
        let tipPercentage = [0.1, 0.18, 0.2]
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
       
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
    }
}

