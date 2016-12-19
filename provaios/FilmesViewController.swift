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
    let cellIdentifier = "Cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.table.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        let xib = UINib(nibName: "FilmeCellTableViewCell", bundle: nil)
        self.table.register(xib, forCellReuseIdentifier: cellIdentifier)
        
        table.delegate = self
        table.dataSource = self
        
        let f = Filme()
        f.titulo = "Senhor do anéis"
        f.subTitulo = "As duas torres"
        f.duracao = "250min"
        f.sinopse = "Após a captura de Merry (Dominic Monaghan) e Pippy (Billy Boyd) pelos orcs, a Sociedade do Anel é dissolvida. Enquanto que Frodo (Elijah Wood) e Sam (Sean Astin) seguem sua jornada rumo à Montanha da Perdição para destruir o Um Anel, Aragorn (Viggo Mortensen), Legolas (Orlando Bloom) e Gimli (John Rhys-Davies) partem para resgatar os hobbits sequestrados."
        
        filmes.append(f)
        
        
        FilmesService().getFilmes()
//        getFilmes()
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
            
            
        }))
        
        addAlerta.addAction(UIAlertAction(title: "Fechar", style: .cancel, handler: nil))
        present(addAlerta, animated: true, completion: nil)
        self.table.deselectRow(at: indexPath, animated:true)
        
    }
    
}
