//
//  GaleriaCollectionViewCell.swift
//  MaeCoruja
//
//  Created by David Augusto on 06/05/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class GaleriaCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    
    static let nibName = "GaleriaCollectionCell"
    static let identifier = "galeriaCell"
    
    override func prepareForReuse() {
        foto.image = nil
        tituloLabel.text = ""
    }
    
    func configure(with polaroid: Polaroid) {
        foto.image = polaroid.foto
        tituloLabel.text = polaroid.titulo
        
    }
    
    func applyShadow() {
        //Deixando o shadow passar das fronteiras da mascara da layer da contentView da celula
        self.contentView.layer.masksToBounds = false
        
        foto.layer.cornerRadius = 4
        foto.layer.shadowColor = UIColor.black.cgColor
        foto.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        foto.layer.shadowRadius = 8.0
        foto.layer.shadowOpacity = 0.2
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        applyShadow()
    }
    
}
