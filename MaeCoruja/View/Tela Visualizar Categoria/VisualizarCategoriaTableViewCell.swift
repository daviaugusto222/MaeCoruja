//
//  VisualizarCategoriaTableViewCell.swift
//  Testes
//
//  Created by Kellyane Nogueira on 05/05/20.
//  Copyright © 2020 Kellyane Nogueira. All rights reserved.
//

import UIKit

class VisualizarCategoriaTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewCell: UIImageView!
    @IBOutlet weak var titleLabelCell: UILabel!
    
    static let nibname = "VisualizarCategoriaTableViewCell"
    static let identifier = "categoriaCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        applyShadow()
        // Initialization code
    }
    
    func applyShadow() {
        //Deixando o shadow passar das fronteiras da mascara da layer da contentView da celula
        self.contentView.layer.masksToBounds = false
        
        imageViewCell.layer.cornerRadius = 12.0
        imageViewCell.layer.shadowColor = UIColor.black.cgColor
        imageViewCell.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        imageViewCell.layer.shadowRadius = 8.0
        imageViewCell.layer.shadowOpacity = 0.2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       // imageViewCell.backgroundColor = UIColor.init(red: <#T##CGFloat#>, green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: <#T##CGFloat#>)
        
    }

}
