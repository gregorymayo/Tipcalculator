//
//  ViewController.swift
//  TipCalculator
//
//  Created by Gregory Jueves Mayo on 12/29/18.
//  Copyright © 2018 Gregory Jueves Mayo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var splitPerPersonLabel: UILabel!
    
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    
    var total = 0.00;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentage = [0.10, 0.15, 0.20, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill *  tipPercentage[tipControl.selectedSegmentIndex]
        
        total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func SplitPerPersonSlider(_ sender: UISlider) {
        
        let person = Int(sender.value)
        
        splitPerPersonLabel.text = String(format: "%d", person)
        
        let personIntoDoubleVar = Double(person)
        
        let totalPerPerson = total / personIntoDoubleVar
        
        totalPerPersonLabel.text = String(format: "$%.2f", totalPerPerson)
        
    }
    
    

}

