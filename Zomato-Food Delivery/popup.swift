//
//  popup.swift
//  Zomato-Food Delivery
//
//  Created by R91 on 05/06/23.
//

import UIKit

class popup: UIViewController {

    var a = ""
    var b = ""
    var c = ""
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var AddButton: UIButton!
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var pop: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pop.alpha = 0
        pop.layer.cornerRadius = 20
        stepper.layer.cornerRadius = 20
        stepper.maximumValue = 10
        AddButton.layer.cornerRadius = 20
        stepper.minimumValue = 0
        stepper.value = 0
        stepper.stepValue = 1
        label1.text = Int(stepper.value).description
        price.text = a
        foodName.text = b
        stepper.layer.cornerRadius = 11
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear){
            self.pop.alpha = 1
        }
    }
    
    @IBAction func stepperAction(_ sender: Any) {
        label1.text = Int(stepper.value).description
        if stepper.value == 0{
            price.text = "₹0"
        }
        else if stepper.value == 1{
            price.text = "₹145"
        }
        else if stepper.value == 2{
            price.text = "₹290"
        }
    }
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true)
    }
    
}                               
