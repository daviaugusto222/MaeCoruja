//
//  LeiteMaternoViewController.swift
//  MaeCoruja
//
//  Created by Brena Amorim on 06/05/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class LeiteMaternoViewController: UIViewController {

    let items: [(title: String, color: String)] = [
        (title: "Por que doar?", color: "LightPink"),
        (title: "Como doar?", color: "Purple"),
        (title: "Postos de doação", color: "Salmon")
    ]
    
    @IBOutlet weak var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
        
        self.table.backgroundColor = UIColor.init(named: "Bege")
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
        
        cell.backgroundColor = UIColor.clear
        cell.cardLabel.text = currentItem.title
        cell.cardImage.backgroundColor = UIColor.init(named: currentItem.color)
         
         return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCard3" {
            let _ = segue.destination as! MapViewController
        }
        else if segue.identifier == "showCard2" {
            let _ = segue.destination as! ComoDoarViewController
        }
        else if segue.identifier == "showCard3" {
            let _ = segue.destination as! PorqueDoarViewController
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cardSelected = items[indexPath.row].title
        
        switch cardSelected {
        case items[0].title:
            print("Por que?")
            performSegue(withIdentifier: "showCard1", sender: self)
        case items[1].title:
            print("Como?")
            performSegue(withIdentifier: "showCard2", sender: self)
        case items[2].title:
            performSegue(withIdentifier: "showCard3", sender: self)
        default:
            return
        }
    }
    
    
}
