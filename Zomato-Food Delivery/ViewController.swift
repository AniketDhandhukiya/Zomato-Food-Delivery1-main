//
//  ViewController.swift
//  Zomato-Food Delivery
//
//  Created by R83 on 13/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mobileTextField: UITextField!
    @IBOutlet weak var mobileText: UITextField!
    @IBOutlet weak var loginimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginimage.layer.cornerRadius = 45
        loginimage.layer.masksToBounds = true
    }

    @IBAction func continueAtion(_ sender: Any) {
        if mobileTextField.text?.count == 10{
        let nv = storyboard?.instantiateViewController(withIdentifier: "otpPAg") as! otpPAg
            navigationController?.pushViewController(nv, animated: true)
        }
        else{
            let alert = UIAlertController.init(title: "ERROR", message: "Please Enter a Valid Mobile number", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    @IBAction func termsOfAction(_ sender: Any) {
        let nv = storyboard?.instantiateViewController(withIdentifier: "termsOfPage") as! termsOfPage
        navigationController?.pushViewController(nv, animated: true)
        
    }
    
    @IBAction func privacyPolicyAction(_ sender: Any) {
        let nv = storyboard?.instantiateViewController(withIdentifier: "privacyPolicyPage") as! privacyPolicyPage
        navigationController?.pushViewController(nv, animated: true)
    }
    @IBAction func loginGoogleAction(_ sender: Any) {
        let nv = storyboard?.instantiateViewController(withIdentifier: "locationPage") as! locationPage
        navigationController?.pushViewController(nv, animated: true)
    }
    
    @IBAction func contentPolicies(_ sender: Any) {
        let nv = storyboard?.instantiateViewController(withIdentifier: "contentPage") as! contentPage
        navigationController?.pushViewController(nv, animated: true)
    }
}

