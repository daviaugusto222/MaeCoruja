//
//  GaleriaViewController.swift
//  MaeCoruja
//
//  Created by David Augusto on 06/05/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class GaleriaViewController: UIViewController {

    
    @IBOutlet weak var galeriaCollectionView: UICollectionView!
    
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollection()
        // Do any additional setup after loading the view.
    }
    
    private func configureCollection(){
        let collectionCellNib = UINib(nibName: PolaroidCollectionViewCell.nibName, bundle: nil)

        galeriaCollectionView.register(collectionCellNib, forCellWithReuseIdentifier: PolaroidCollectionViewCell.identifier)
    }

}

extension GaleriaViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PolaroidCollectionViewCell.identifier, for: indexPath) as! PolaroidCollectionViewCell
        
        cell.configure(with: Polaroid.createPolaroid())
        
        return cell
    }
    
    
}

extension GaleriaViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width/2, height: view.frame.height/3)
    }
}
