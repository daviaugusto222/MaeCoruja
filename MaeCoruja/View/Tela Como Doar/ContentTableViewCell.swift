//
//  ContentTableViewCell.swift
//  MaeCoruja
//
//  Created by Kellyane Nogueira on 04/05/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class ContentTableViewCell: UITableViewCell {

    
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
        // Initialization code

    }

   /* override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 */
    
}
