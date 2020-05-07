//
//  ConteudoGuiaViewController.swift
//  Testes
//
//  Created by Kellyane Nogueira on 07/05/20.
//  Copyright © 2020 Kellyane Nogueira. All rights reserved.
//

import UIKit

class ConteudoGuiaViewController: UIViewController {

    @IBOutlet weak var viewConteudoGuia: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Nome do Guia"
        configureTable()
        // Do any additional setup after loading the view.
    }
    
    private func configureTable(){
        let tableCellNib = UINib(nibName: ConteudoGuiaTableViewCell.nibname, bundle: nil)
        viewConteudoGuia.register(tableCellNib, forCellReuseIdentifier: ConteudoGuiaTableViewCell.identifier)
    }
    

}
