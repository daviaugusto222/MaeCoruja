//
//  VisualizarRecordacaoTableViewCell.swift
//  MaeCoruja
//
//  Created by David Augusto on 07/05/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class VisualizarRecordacaoTableViewCell: UITableViewCell {

    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var texto: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
