//
//  HoTViewController.swift
//  ChooseMe
//
//  Created by Cesar Casil on 4/26/19.
//  Copyright © 2019 Cesar Casil. All rights reserved.
//

import UIKit

class HoTViewController: UIViewController {
    @IBOutlet weak var hotLabel: UILabel!
    @IBOutlet weak var headLabel: UILabel!
    @IBOutlet weak var tailLabel: UILabel!
    
    var hot: [String] = ["Heads", "Tails"]
    
    var h = 0
    var t = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hotLabel.text = " "
        headLabel.text = "0 Heads"
        tailLabel.text = "0 Tails"
    }
    
    @IBAction func hotButtonPressed(_ sender: UIButton) {
        let number = Int.random(in: 0..<2)
        hotLabel.text = hot[number]
        if number == 0 {
            h += 1
            headLabel.text = String(h) + " Heads"
        } else {
            t += 1
            tailLabel.text = String(t) + " Tails"
        }
    }
    

}
