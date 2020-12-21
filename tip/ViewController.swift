//
//  ViewController.swift
//  tip
//
//  Created by Bhumi Patel on 11/22/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentagelabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var tipSliderPercentagelabel: UILabel!
    
    //didn't need the slider value, since there's already a separate percentage label.
    @IBOutlet weak var tipSliderValue: UISlider!
    
    @IBAction func SliderAction(_ sender: UISlider) {
        
        //here, the tipSliderpercentageLabel will be changed according to the slider movement
        
        tipSliderPercentagelabel.text! = String(format: "%.2f", sender.value)
        
    }
    
    @IBOutlet weak var SliderTotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //initialize bill amount and calculate tip
        
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.20]
        
        //Calculate the tip and total
        let tip = bill * tipPercentages[tipAmountSegmentedControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        //now we pass it back to the ViewController storyboard to display on our app
        
        tipPercentagelabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    //when the calculate button is pressed this action is performed
    @IBAction func Calculate_Slider_Tip(_ sender: Any) {
        
        //Here, slider total will be calculate
        
        let bill_1 = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentageAmount = tipSliderPercentagelabel.text!
        
        let slider_tip_amount: Double = Double(tipPercentageAmount) ?? 1/100
        
        let s_total = bill_1 + slider_tip_amount
        
        //add the total to the slider_total lable
        
        SliderTotalLabel.text = String(format: "$%.2f", s_total)
        
    }
    
}

