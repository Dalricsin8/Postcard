//
//  ViewController.swift
//  Postcard
//
//  Created by Dale Sinnott on 10/14/14.
//  Copyright (c) 2014 Dale Sinnott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toNameLabel: UILabel!
    @IBOutlet weak var fromNameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameToTextField: UITextField!
    @IBOutlet weak var enterNameFromTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mailButton(sender: UIButton) {
        toNameLabel.hidden = false
        toNameLabel.text = enterNameToTextField.text
        toNameLabel.textColor = UIColor.redColor()
        
        fromNameLabel.hidden = false
        fromNameLabel.text = enterNameFromTextField.text
        fromNameLabel.textColor = UIColor.redColor()
 
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterNameToTextField.text = "To: "
        enterNameToTextField.resignFirstResponder()
        
        enterNameFromTextField.text = "From: "
        enterNameFromTextField.resignFirstResponder()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
    }

}

