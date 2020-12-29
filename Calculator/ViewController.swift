//
//  ViewController.swift
//  Calculator
//
//  Created by Hayley Robinson on 12/28/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billAmt: UITextField!
    
    @IBOutlet weak var tipAmtLabel: UILabel!
    
    @IBOutlet weak var segmentTip: UISegmentedControl!
    
    @IBOutlet weak var finalLabel: UILabel!
    
    @IBOutlet weak var finalTotal: UILabel!
    
    @IBOutlet weak var finalTip: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmt.text!) ?? 0
        
        let tipPercentages = [0.15, 0.20, 0.25]
        
        let tip = bill * tipPercentages[segmentTip .selectedSegmentIndex]
                  
        let total = tip + bill
        
        finalTip.text = String(format: "$%.2f", tip)
        
        finalTotal.text = String(format: "$%.2f", total)
    
    }
    
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
}

