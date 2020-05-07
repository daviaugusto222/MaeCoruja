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
    
    let temas:Array<String> = ["Alongamentos","Caminhada", "Pilates", "Hidroginástica"]
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "alongamento" {
               let _ = segue.destination as! ConteudoGuiaViewController
            }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cardSelected = temas[indexPath.row]
        print("\(cardSelected) foi selecionada!")
        
        switch cardSelected {
        case temas[0]:
            performSegue(withIdentifier: "alongamento", sender: self)
        case temas[1]:
            print("Caminhada")
        case temas[2]:
            print("Pilates")
        case temas[3]:
            print("Hidroginástica")
        default:
            return
        }
    }
}

