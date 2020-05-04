//
//  RecordacoesViewController.swift
//  MaeCoruja
//
//  Created by David Augusto on 28/04/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class RecordacoesViewController: UIViewController {

    
    @IBOutlet weak var recordacoesCollection: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollection()
        // Do any additional setup after loading the view.
    }
    
    private func configureCollection(){
        let collectionCellNib = UINib(nibName: PolaroidCollectionViewCell.nibName, bundle: nil)
        
        recordacoesCollection.register(collectionCellNib, forCellWithReuseIdentifier: PolaroidCollectionViewCell.identifier)
    }

}

extension RecordacoesViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PolaroidCollectionViewCell.identifier, for: indexPath) as! PolaroidCollectionViewCell
        
        cell.configure(with: Polaroid.createPolaroid())
        
        return cell
    }
    
    
}
