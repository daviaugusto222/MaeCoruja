//
//  PorqueDoarViewController.swift
//  MaeCoruja
//
//  Created by Brena Amorim on 07/05/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class PorqueDoarViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let titles:Array<String> = ["O Leite Materno Importa", "Porque Doar Leite Materno?"]
    
    let contents:Array<String> = ["""
O leite materno é o melhor alimento para garantir os nutrientes necessários aos recém-nascidos até os seis meses de idade. Rico em proteínas, vitaminas, anticorpos, gorduras e água, ele é essencial para o bom desenvolvimento da criança.

    Para as mães, alguns dos benefícios da amamentação são: Queima de calorias, proteção contra a osteoporose e os cânceres de mama e útero, evita o surgimento de cancros nas mamas e nos ovários, acelera a recuperação do tamanho normal do útero. Além disso, aumenta a intimidade com o bebê.
""","""
O leite materno é importante para todos os bebês, principalmente para os que estão internados e não podem ser amamentados pela própria mãe. Doar leite materno humano é um gesto que salva vidas.

Cada pote de 300ml de leite materno humano pode ajudar até 10 recém-nascidos por dia. Os principais benefícios do leite materno são:

    - Protege a criança contra diarreias, infecções respiratórias e alergias.
    - Reduz em 13% a mortalidade em crianças menores de 5 anos.
    - Reduz risco de desenvolver hipertensão, colesterol alto, diabetes e obesidade na vida adulta.
Qualquer quantidade de leite pode ajudar. Para se ter uma ideia, 1 ml de leite já é suficiente para nutrir um recém-nascido a cada refeição, dependendo do peso. O pote não precisa estar cheio para ser levado ao Banco de Leite Humano (BLH).

Para doar, a única exigência é que a mulher esteja amamentando o próprio filho. Além disso, as mulheres que enfrentam dificuldades para amamentar também podem procurar as unidades de BLH.
"""]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Porque Doar"
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.backgroundColor = UIColor.init(named: "Bege")
        configureTable()
    }
        
    private func configureTable(){
        let tableCellNib = UINib(nibName: ContentTableViewCell.nibname, bundle: nil)
        tableView.register(tableCellNib, forCellReuseIdentifier: ContentTableViewCell.identifier)
        }

}
extension PorqueDoarViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ContentTableViewCell.identifier, for: indexPath) as? ContentTableViewCell else{
            fatalError("Wrong identifier")
        }
        
        cell.backgroundColor = UIColor.clear
        cell.labelTitle.text = titles[indexPath.row]
        cell.contentTextView.text = contents[indexPath.row]
        cell.imageView?.image = UIImage(named: titles[indexPath.row])
        
        return cell //UITableViewCell()
    }
    //IndexPath - Qual a seção e qual é a célula
}

