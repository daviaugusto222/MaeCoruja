//
//  CardMilkDonationViewCell.swift
//  MaeCoruja
//
//  Created by Brena Amorim on 06/05/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class CardMilkDonationViewCell: UITableViewCell {
    
    static let nibName = "CardMilkDonationTableViewCell"
    static let identifier = "cardCell"
    
    @IBOutlet weak var cardImage: UIImageView!
    
    @IBOutlet weak var cardLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        applyShadow()
        self.selectionStyle = .none
    }
    
    func applyShadow() {
        //Deixando o shadow passar das fronteiras da mascara da layer da contentView da celula
        self.contentView.layer.masksToBounds = false
        
        cardImage.layer.cornerRadius = 12.0
        cardImage.layer.shadowColor = UIColor.black.cgColor
        cardImage.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        cardImage.layer.shadowRadius = 8.0
        cardImage.layer.shadowOpacity = 0.2
    }


}
