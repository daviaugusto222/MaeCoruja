//
//  LeiteMaternoViewController.swift
//  MaeCoruja
//
//  Created by Brena Amorim on 06/05/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class LeiteMaternoViewController: UIViewController {

    let items: [(title: String, color: UIColor)] = [
        (title: "Por que doar?", color: .red),
        (title: "Como doar?", color: .green),
        (title: "Postos de doação", color: .blue)
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
         
         cell.cardLabel.text = currentItem.title
        // cell.bgView.tintColor = currentItem.color
         
         return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCard3" {
            let _ = segue.destination as! MapViewController
        }
       // else if segue.identifier == "mostrarCard2"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cardSelected = items[indexPath.row].title
        print("\(cardSelected) foi selecionada!")
        
        switch cardSelected {
        case items[0].title:
            print("Por que?")
            //performSegue(withIdentifier: "mostrarTela2", sender: self)
        case items[1].title:
            print("Como?")
            //performSegue(withIdentifier: "mostrarTela3", sender: self)
        case items[2].title:
            performSegue(withIdentifier: "showCard3", sender: self)
        default:
            return
        }
    }
    
    
}