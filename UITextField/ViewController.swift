//
//  ViewController.swift
//  UITextField
//
//  Created by dit06 on 2019. 4. 3..
//  Copyright © 2019년 dit06. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTextField.delegate = self
    }

    @IBAction func btnPressed(_ sender: Any) {
        var inString = myTextField.text! + " Coding"
        myLabel.text = inString
        myTextField.text = ""
        
        myTextField.resignFirstResponder()
    }
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        var inString = myTextField.text! + " Coding"
        myLabel.text = inString
        myTextField.text = ""
        myTextField.resignFirstResponder()
        return true
    }
    public func textFieldShouldClear(_ textField: UITextField) -> Bool{
        myTextField.backgroundColor = UIColor.blue
        return true
    }
}

