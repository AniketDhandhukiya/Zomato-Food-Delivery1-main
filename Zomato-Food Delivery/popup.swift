//
//  popup.swift
//  Zomato-Food Delivery
//
//  Created by R91 on 05/06/23.
//

import UIKit

class popup: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var pop: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pop.alpha = 0
        pop.layer.cornerRadius = 20
        stepper.layer.cornerRadius = 11
        stepper.maximumValue = 50
        stepper.minimumValue = 0
        stepper.value = 0
        stepper.stepValue = 1
        label1.text = Int(stepper.value).description
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear){
            self.pop.alpha = 1
        }
    }
    
    @IBAction func stepperAction(_ sender: Any) {
        label1.text = Int(stepper.value).description

    }
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true)
    }
    
}                               
