//
//  ViewController.swift
//  Zomato-Food Delivery
//
//  Created by R83 on 13/04/23.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var pri: UIButton!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var mobileText: UITextField!
    @IBOutlet weak var loginimage: UIImageView!
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginimage.layer.cornerRadius = 45
        loginimage.layer.masksToBounds = true
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
    }

    @IBAction func continueAtion(_ sender: Any) {
        
        if Sqlite.checkData(MobileNo: mobileText.text ?? "", password: passwordText.text ?? "") , mobileText.text?.count == 10{
            let nv = storyboard?.instantiateViewController(withIdentifier: "otpPAg") as! otpPAg
                navigationController?.pushViewController(nv, animated: true)
        }
        else {
            let alert = UIAlertController.init(title: "ERROR", message: "Please Enter a Valid Mobile number", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
    }
    @IBAction func newUserAction(_ sender: Any) {
        let nv = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            navigationController?.pushViewController(nv, animated: true)
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func contentPolicies(_ sender: Any) {
        let nv = storyboard?.instantiateViewController(withIdentifier: "contentPage") as! contentPage
        navigationController?.pushViewController(nv, animated: true)
    }
    
    @objc func keyboardWillShow(notification: NSNotification){
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue{
            //let keyboardHeight = keyboardFrame.cgRectValue.height
            //let bottomSpace = self.view.frame.height - (continueButton.frame.origin.y + continueButton.frame.height)
            //
            //self.view.frame.origin.y -= keyboardHeight - bottomSpace + 10
        }

    }
}

