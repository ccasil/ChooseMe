//
//  PickNameViewController.swift
//  ChooseMe
//
//  Created by Cesar Casil on 4/29/19.
//  Copyright © 2019 Cesar Casil. All rights reserved.
//

import UIKit

class PickNameViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var chosenLabel: UILabel!
    @IBOutlet weak var namesLabel: UILabel!
    
    var names: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround() 
        
        namesLabel.text = ""
        chosenLabel.text = " "
        chooseButton.isEnabled = false
    }
    @IBAction func addButtonPressed(_ sender: UIButton) {
        chooseButton.isEnabled = true
        if let name = nameTextField.text, nameTextField.text != "" {
            names.append(name)
            nameTextField.text?.removeAll()
            namesLabel.text = "\(name)\n\(namesLabel.text ?? "")"
        }
    }
    @IBAction func chooseButtonPressed(_ sender: UIButton) {
        let randint = Int.random(in: 0..<names.count)
        chosenLabel.text = names[randint]
    }
    
}
