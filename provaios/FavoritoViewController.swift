//
//  FilmesViewController.swift
//  provaios
//
//  Created by Arthur on 18/12/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import UIKit

class FavoritoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var table: UITableView!
    
    var filmes: Array<Filme> = []
    let cellIdentifier = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.table.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        let xib = UINib(nibName: "FilmeCellTableViewCell", bundle: nil)
        self.table.register(xib, forCellReuseIdentifier: cellIdentifier)
        
        table.delegate = self
        table.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        filmes = Favorito.Data.filmes
        self.table.reloadData()
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
        let addAlerta = UIAlertController(title: "Remover", message: "Deseja remover o filme " + filme.titulo + " dos favoritos ?", preferredStyle: UIAlertControllerStyle.alert)
        addAlerta.addAction(UIAlertAction(title: "Sim", style: .default, handler: { (action: UIAlertAction!) in
                Favorito.Data.filmes.remove(at: indexPath.row)
                self.filmes = Favorito.Data.filmes
                self.table.reloadData()
                       
        }))
        
        addAlerta.addAction(UIAlertAction(title: "Não", style: .cancel, handler: nil))
        present(addAlerta, animated: true, completion: nil)
        self.table.deselectRow(at: indexPath, animated:true)
        
    }
    
}
