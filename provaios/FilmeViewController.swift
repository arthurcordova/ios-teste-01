//
//  FilmeViewController.swift
//  provaios
//
//  Created by Arthur on 17/12/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import UIKit

class FilmeViewController: UITableViewController {
        
    @IBOutlet var table: UITableView!
    @IBOutlet var cellLabel: UILabel!
    
    
    var items = ["Arthur", "Joao", "Maria"]
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            
//            let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell") as! UITableViewCell
//            let linha = indexPath.row
//            cell.titulo?.text = self.items[linha]
//            print("TESTE")
//            return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
        
        let xib = UINib(nibName: "FilmeCell", bundle: nil)
        
        print("TESTE zzzzz")
        self.table.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        self.table.register(xib, forCellReuseIdentifier: "Cell")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("TESTE xxxxx")
        self.table.reloadData()
    }
    
}
