//
//  VisualizarCategoriaViewController.swift
//  Testes
//
//  Created by Kellyane Nogueira on 05/05/20.
//  Copyright © 2020 Kellyane Nogueira. All rights reserved.
//

import UIKit

class VisualizarCategoriaViewController: UIViewController {

    @IBOutlet weak var TableViewCategoria: UITableView!
    
    let temas:Array<String> = ["Caminhada", "Alongamentos", "Pilates", "Hidroginástica"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Categoria"
        configureTable()

        // Do any additional setup after loading the view.
    }
    
    private func configureTable(){
        let tableCellNib = UINib(nibName: VisualizarCategoriaTableViewCell.nibname, bundle: nil)
        TableViewCategoria.register(tableCellNib, forCellReuseIdentifier: VisualizarCategoriaTableViewCell.identifier)
    }
}

extension VisualizarCategoriaViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return temas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        guard let cell = tableView.dequeueReusableCell(withIdentifier: VisualizarCategoriaTableViewCell.identifier, for: indexPath) as? VisualizarCategoriaTableViewCell else{
            fatalError("Wrong identifier")
        }
        
        cell.titleLabelCell.text = temas[indexPath.row]
        cell.imageViewCell?.image = UIImage(named: temas[indexPath.row])
        
        return cell
    }
}

