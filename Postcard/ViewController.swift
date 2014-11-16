//
//  ViewController.swift
//  Postcard
//
//  Created by Axel Zuziak on 16.11.2014.
//  Copyright (c) 2014 Axel Zuziak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // dirma
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMainButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        
        
        messageLabel.text = "Wysłano do: \(enterNameTextField.text)"
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        messageLabel.textColor = UIColor.blueColor()
        
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
    
    }

}

