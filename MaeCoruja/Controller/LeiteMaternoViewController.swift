//
//  LeiteMaternoViewController.swift
//  MaeCoruja
//
//  Created by Brena Amorim on 06/05/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class LeiteMaternoViewController: UIViewController {

    let items: [(text: String, color: UIColor)] = [
        (text: "Por que doar?", color: .red),
        (text: "Como doar?", color: .green),
        (text: "Postos de doação", color: .blue)
    ]
    
    @IBOutlet weak var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
        
        table.separatorStyle = .none

        let tableCellNib = UINib(nibName: CardMilkDonationViewCell.nibName, bundle: nil)
        table.register(tableCellNib, forCellReuseIdentifier: CardMilkDonationViewCell.identifier)


    }
    
}

extension LeiteMaternoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CardMilkDonationViewCell.identifier, for: indexPath) as! CardMilkDonationViewCell
         
         let currentItem = items[indexPath.row]
         
         cell.cardLabel.text = currentItem.text
        // cell.bgView.tintColor = currentItem.color
         
         return cell

    }
    
    
    
}
