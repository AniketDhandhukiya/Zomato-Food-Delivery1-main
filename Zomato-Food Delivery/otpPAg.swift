//
//  otpPAge.swift
//  Zomato-Food Delivery
//
//  Created by R83 on 19/04/23.
//

import UIKit

class otpPAg: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var otpView: DPOTPView!
    
    
        
    
    
    @IBAction func continueButton(_ sender: Any) {
        let nv = storyboard?.instantiateViewController(withIdentifier: "TabBar") as! TabBar
        navigationController?.pushViewController(nv, animated: true)
    }
}
