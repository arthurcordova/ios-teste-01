//
//  FilmesViewController.swift
//  provaios
//
//  Created by Arthur on 18/12/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import UIKit

class FilmesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var table: UITableView!
    
    let animals: [String] = ["Horse", "Cow", "Camel", "Sheep", "Goat"]
    let cellIdentifier = "Cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.table.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        let xib = UINib(nibName: "FilmeCellTableViewCell", bundle: nil)
        self.table.register(xib, forCellReuseIdentifier: cellIdentifier)
        
        table.delegate = self
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:FilmeCellTableViewCell = table.dequeueReusableCell(withIdentifier: cellIdentifier) as! FilmeCellTableViewCell!
        cell.label1.text = self.animals[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Linha \(indexPath.row).")
    }


    
}
