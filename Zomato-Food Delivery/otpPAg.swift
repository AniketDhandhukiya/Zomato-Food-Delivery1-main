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
    
    @IBAction func otpContinueAction(_ sender: Any) {
        if otpView.validate(){
            let nv = storyboard?.instantiateViewController(withIdentifier: "zomatoMainPag") as! zomatoMainPag
            navigationController?.pushViewController(nv, animated: true)
        }
        
      
    }
    
}
