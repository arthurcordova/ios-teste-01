//
//  FilmeCellTableViewCell.swift
//  provaios
//
//  Created by Arthur on 17/12/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import UIKit

class FilmeCellTableViewCell: UITableViewCell {
    
    
    @IBOutlet var titulo: UILabel!
    @IBOutlet var duracao: UILabel!
    @IBOutlet var subtitulo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
