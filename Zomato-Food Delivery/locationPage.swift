//
//  locationPage.swift
//  Zomato-Food Delivery
//
//  Created by R83 on 14/04/23.
//

import UIKit

class locationPage: UIViewController {

    @IBOutlet weak var button1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.layer.borderWidth = 1
        button1.layer.borderColor = UIColor.red.cgColor
        button1.layer.cornerRadius = 7
        button1.layer.masksToBounds = true
        
    }
    

    @IBAction func backButton(_ sender: Any) {
        let nv = storyboard?.instantiateViewController(withIdentifier: "ViewController1") as! ViewController1
        navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func locationButtonAction(_ sender: Any) {
        let nv = storyboard?.instantiateViewController(withIdentifier: "TabBar") as! TabBar
        navigationController?.pushViewController(nv, animated: true)
    }
    
}
