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
    
    static let nibName = "PolaroidCollectionCell"
    static let identifier = "polaroidCell"
    
    override func prepareForReuse() {
        polaroidImage.image = nil
        tituloLabel.text = ""
        dataLabel.text = ""
    }
    
    func configure(with polaroid: Polaroid) {
        polaroidImage.image = UIImage(named: polaroid.fotoNome)
        tituloLabel.text = polaroid.titulo
        dataLabel.text = polaroid.data
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
