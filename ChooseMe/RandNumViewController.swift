//
//  RandNumViewController.swift
//  ChooseMe
//
//  Created by Cesar Casil on 4/26/19.
//  Copyright © 2019 Cesar Casil. All rights reserved.
//

import UIKit

class RandNumViewController: UIViewController {

    @IBOutlet weak var maxTextField: UITextField!
    @IBOutlet weak var randomNumberLabel: UILabel!
    @IBOutlet weak var previousLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        previousLabel.text = " "
        randomNumberLabel.text = " "
        
        self.hideKeyboardWhenTappedAround() 
    }
    
    @IBAction func randomButtonPressed(_ sender: UIButton) {
        if let randint = Int(maxTextField.text!) {
            let number = Int.random(in: 0..<randint+1)
            randomNumberLabel.text = String(number)
            previousLabel.text = "\(number)\n\(previousLabel.text!)"
        }
    }
}
