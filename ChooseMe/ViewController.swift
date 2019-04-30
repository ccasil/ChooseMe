//
//  ViewController.swift
//  ChooseMe
//
//  Created by Cesar Casil on 4/26/19.
//  Copyright © 2019 Cesar Casil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let items: [String] = ["Heads or Tails", "Random Number Generator", "Pick a Name", "Name Shuffle"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "HoTSegue") {
            if let destination = segue.destination as? HoTViewController {
                destination.title = items[(tableView.indexPathForSelectedRow?.row)!]
            }
        }
        else if (segue.identifier == "RandomSegue") {
            if let destination = segue.destination as? HoTViewController {
                destination.title = items[(tableView.indexPathForSelectedRow?.row)!]
            }
        }
        else if (segue.identifier == "NameSegue") {
            if let destination = segue.destination as? PickNameViewController {
                destination.title = items[(tableView.indexPathForSelectedRow?.row)!]
            }
            else if (segue.identifier == "OrderSegue") {
                if let destination = segue.destination as? OrderNameViewController {
                    destination.title = items[(tableView.indexPathForSelectedRow?.row)!]
                }
            }
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath)
        let text = items[indexPath.row]
        cell.textLabel!.text = text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.performSegue(withIdentifier: "HoTSegue", sender: self)
        case 1:
            self.performSegue(withIdentifier: "RandomSegue", sender: self)
        case 2:
            self.performSegue(withIdentifier: "NameSegue", sender: self)
        case 3:
            self.performSegue(withIdentifier: "OrderSegue", sender: self)
        default:
            print ("Out of Index")
        }
    }
    
    
}
