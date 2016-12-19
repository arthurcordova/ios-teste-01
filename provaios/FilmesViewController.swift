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
    
    var filmes: Array<Filme> = []
    var favorito = Favorito()
    let cellIdentifier = "Cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.table.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        let xib = UINib(nibName: "FilmeCellTableViewCell", bundle: nil)
        self.table.register(xib, forCellReuseIdentifier: cellIdentifier)
        
        table.delegate = self
        table.dataSource = self
        
        let url=URL(string:"http://www.mocky.io/v2/58559bcb2c00004d1d598d5b")
        do {
            print("Arthur")
            let allContactsData = try Data(contentsOf: url!)
            let allContacts = try JSONSerialization.jsonObject(with: allContactsData, options: JSONSerialization.ReadingOptions.allowFragments) as! [String : AnyObject]
            if let arrJSON = allContacts["filmes"] {
                for index in 0...arrJSON.count-1 {
                    
                    let aObject = arrJSON[index] as! [String : AnyObject]
                    
                    let f = Filme()
                    f.titulo = aObject["titulo"] as! String
                    f.subTitulo = aObject["subtitulo"] as! String
                    f.duracao = aObject["duracao"] as! String
                    f.sinopse = aObject["sinopse"] as! String
                    filmes.append(f)
                }
            }
        }
        catch {
            
        }
           }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.filmes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:FilmeCellTableViewCell = table.dequeueReusableCell(withIdentifier: cellIdentifier) as! FilmeCellTableViewCell!
        let filme = self.filmes[indexPath.row] as Filme
        cell.titulo?.text = filme.titulo
        cell.subtitulo?.text = filme.subTitulo
        cell.duracao?.text = filme.duracao
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let filme = filmes[indexPath.row]
        let addAlerta = UIAlertController(title: "Sinopse", message: filme.sinopse, preferredStyle: UIAlertControllerStyle.alert)
        addAlerta.addAction(UIAlertAction(title: "Add Favoritos", style: .default, handler: { (action: UIAlertAction!) in
            
            Favorito.Data.filmes.append(filme)
            
        }))
        
        addAlerta.addAction(UIAlertAction(title: "Fechar", style: .cancel, handler: nil))
        present(addAlerta, animated: true, completion: nil)
        self.table.deselectRow(at: indexPath, animated:true)
        
    }
    
}
