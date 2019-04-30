//
//  OrderNameViewController.swift
//  ChooseMe
//
//  Created by Cesar Casil on 4/30/19.
//  Copyright © 2019 Cesar Casil. All rights reserved.
//

import UIKit

class OrderNameViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var nameTextLabel: UILabel!
    
    var names: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        orderButton.isEnabled = false
        nameTextLabel.text = ""
    }
    @IBAction func addButtonPressed(_ sender: UIButton) {
        orderButton.isEnabled = true
        if let name = nameTextField.text, nameTextField.text != "" {
            let randint = Int.random(in: 0..<names.count+1)
            names.insert(name, at: randint)
            nameTextField.text?.removeAll()
            nameTextLabel.text = "\(name)\n\(nameTextLabel.text ?? "")"
        }
    }
    @IBAction func orderButtonPressed(_ sender: UIButton) {
        nameTextLabel.text = ""
        names.shuffle()
        for name in names {
            let arr = (self.nameTextLabel.text ?? "") + "\(name)\n"
            self.nameTextLabel.text = arr
        }
    }
    
}
