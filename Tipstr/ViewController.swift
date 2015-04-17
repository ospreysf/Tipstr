//
//  ViewController.swift
//  Tipstr
//
//  Created by Arthur Law on 4/11/15.
//  Copyright (c) 2015 Arthur Law. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipAllPercentages = [0.18, 0.2, 0.22]
        var tipPercentages = tipAllPercentages[tipControl.selectedSegmentIndex]
        
        //println("user edited bill amount")
        var billAmount = NSString(string: billField.text).doubleValue
        //println("bill amount is now \(billAmount)")
        
        var tip = billAmount * tipPercentages
        //println ("the tip is now \(tip)")
        tipLabel.text = "$\(tip)"
        
        var total = billAmount + tip
        //println("the total is now \(total)")
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    

    

}

