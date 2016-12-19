//
//  Favorito.swift
//  provaios
//
//  Created by Arthur on 19/12/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import Foundation

class Favorito {
    
    var filmes: Array<Filme> = []
    
    init() {
        
    }
    
    func adicionar(filme: Filme) -> Void {
        self.filmes.append(filme)
    }
    
    func remover(posicao: Int) -> Void {
        self.filmes.remove(at: posicao)
    }

}
