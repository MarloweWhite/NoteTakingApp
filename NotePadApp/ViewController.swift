//
//  ViewController.swift
//  NotePadApp
//
//  Created by Marlowe White on 16/05/2019.
//  Copyright © 2019 Marlowe White. All rights reserved.
//

import UIKit

class NotePadViewController: UITableViewController {

    let itemArray = ["work", "drink", "work"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "notePadItemCell", for: indexPath)
    
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //Tableview delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
                
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }

        
        
    }
}

