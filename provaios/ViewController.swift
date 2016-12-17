//
//  ViewController.swift
//  provaios
//
//  Created by Arthur on 15/12/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var buttonLogin: UIButton!
    @IBOutlet var table: UITableView!
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath)
        -> UITableViewCell {
            
            let cell = self.table.dequeueReusableCell(withIdentifier: "cell") as! FilmeCell
            //let agendamento = self.agendamentos[indexPath.row]
            
            cell.titulo.text = "Arthur 01"
           
            
            return cell
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let xib = UINib(nibName: "FilmeCell", bundle: nil)
        self.table.register(xib, forCellReuseIdentifier: "cell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

