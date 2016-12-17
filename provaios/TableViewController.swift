//
//  TableViewController.swift
//  provaios
//
//  Created by Arthur on 17/12/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    var items: [String] = ["We", "Heart", "Swift"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let xib = UINib(nibName: "FilmeCell", bundle: nil)
        self.tableView.register(xib, forCellReuseIdentifier: "cell")
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell")
            cell?.textLabel?.text = "Arthur"
            print("ARTHUR")
            
            return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            }

    
    
    
    
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.items.count;
//    }
//    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: <#T##String#>, for: <#T##IndexPath#>)l("cell")! as UITableViewCell
//        
//        cell.textLabel?.text = self.items[indexPath.row]
//        
//        return cell
//    }
//    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        print("You selected cell #\(indexPath.row)!")
//    }
    
}
