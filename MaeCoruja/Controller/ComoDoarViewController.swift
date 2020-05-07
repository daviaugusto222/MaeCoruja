//
//  ComoDoarViewController.swift
//  MaeCoruja
//
//  Created by Kellyane Nogueira on 04/05/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class ComoDoarViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    
  let titles:Array<String> = ["Como fazer a coleta do leite materno","Preparo do frasco para guardar o leite","Higiene pessoal antes de iniciar a coleta", "Local adequado para retirar o leite", "Como fazer para retirar o leite", "Como conservar o leite ordenhado", "Como oferecer o leite ordenhado à criança"]
   let contents:Array<String> = ["A maioria das mulheres que estão amamentando produz leite em excesso, especialmente do terceiro ao quinto dia após o parto. A produção do leite depende do esvaziamento da mama e, quanto mais a mulher esvazia as mamas, mais leite ela será capaz de produzir. Assim, as mães que desejam doar leite materno para ajudar na recuperação dos bebês hospitalizados, podem estocar o leite em vidros de café solúvel esterilizados e doá-los para os bancos de leite humano. O leite deve ser conservado no congelador por até 10 dias. E caso seja descongelado, não pode ser congelado novamente.","Conteúdo 2","Conteúdo 3", "Conteúdo 4", "Conteúdo 5", "Conteúdo 6", "Conteúdo 7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Como Doar"
        configureTable()
        
        // Do any additional setup after loading the view.
    }
    
    private func configureTable(){
        let tableCellNib = UINib(nibName: ContentTableViewCell.nibname, bundle: nil)
        tableView.register(tableCellNib, forCellReuseIdentifier: ContentTableViewCell.identifier)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
extension ComoDoarViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ContentTableViewCell.identifier, for: indexPath) as? ContentTableViewCell else{
            fatalError("Wrong identifier")
        }
        
        cell.labelTitle.text = titles[indexPath.row]
        cell.contentTextView.text = contents[indexPath.row]
        cell.imageView?.image = UIImage(named: titles[indexPath.row])
        
        return cell //UITableViewCell()
    }
    //IndexPath - Qual a seção e qual é a célula
}
