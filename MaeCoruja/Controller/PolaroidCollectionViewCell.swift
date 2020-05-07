//
//  PolaroidCollectionViewCell.swift
//  MaeCoruja
//
//  Created by David Augusto on 30/04/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class PolaroidCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var polaroidImage: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var polaroid: UIView!
    
    
    static let nibName = "PolaroidCollectionCell"
    static let identifier = "polaroidCell"
    
    override func prepareForReuse() {
        polaroidImage.image = nil
        tituloLabel.text = ""
        dataLabel.text = ""
    }
    
    func configure(with polaroid: Polaroid) {
        polaroidImage.image = polaroid.foto
        tituloLabel.text = polaroid.titulo
        dataLabel.text = polaroid.data
    }
    
    func applyShadow() {
        //Deixando o shadow passar das fronteiras da mascara da layer da contentView da celula
        self.contentView.layer.masksToBounds = false
        
        polaroid.layer.cornerRadius = 4
        polaroid.layer.shadowColor = UIColor.black.cgColor
        polaroid.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        polaroid.layer.shadowRadius = 8.0
        polaroid.layer.shadowOpacity = 0.2
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        applyShadow()
    }
    
}
