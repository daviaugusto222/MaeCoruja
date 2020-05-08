//
//  ContentTableViewCell.swift
//  MaeCoruja
//
//  Created by Kellyane Nogueira on 04/05/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class ContentTableViewCell: UITableViewCell {

    
    @IBOutlet weak var comoDoarImageView: UIImageView!
    @IBOutlet weak var viewMargin: UIView!
    @IBOutlet weak var viewTitle: UIView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var contentTextView: UITextView!
    
    static let nibname = "ContentTableViewCell"
    static let identifier = "contentCell"
    
    override func prepareForReuse() {
        labelTitle.text = ""
        contentTextView.text = ""
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        applyShadow()

    }
    
    func applyShadow() {
        //Deixando o shadow passar das fronteiras da mascara da layer da contentView da celula
        self.contentView.layer.masksToBounds = false
        
        comoDoarImageView.layer.cornerRadius = 12.0
        comoDoarImageView.layer.shadowColor = UIColor.black.cgColor
        comoDoarImageView.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        comoDoarImageView.layer.shadowRadius = 8.0
        comoDoarImageView.layer.shadowOpacity = 0.2
    }
    

   /* override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 */
    
}
