//
//  ViewController.swift
//  Zomato-Food Delivery
//
//  Created by R87 on 03/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var mobileTextFiels: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        Sqlite.createFile()

    }
    

    
     @IBAction func SubmitAction(_ sender: Any) {
         Sqlite.addData(MobileNo: mobileTextFiels.text!, password: passwordTextField.text!)
         let nv = storyboard?.instantiateViewController(identifier: "ViewController1") as! ViewController1
         navigationController?.pushViewController(nv, animated: true)
     }
     

}
