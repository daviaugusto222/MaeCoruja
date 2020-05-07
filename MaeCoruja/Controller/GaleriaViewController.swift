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

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollection()
        // Do any additional setup after loading the view.
    }
    
    private func configureCollection(){
        let collectionCellNib = UINib(nibName: GaleriaCollectionViewCell.nibName, bundle: nil)

        galeriaCollectionView.register(collectionCellNib, forCellWithReuseIdentifier: GaleriaCollectionViewCell.identifier)
    }

}

extension GaleriaViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GaleriaCollectionViewCell.identifier, for: indexPath) as! GaleriaCollectionViewCell
        
        cell.configure(with: Polaroid.createPolaroid())
        
        return cell
    }
    
    
}

extension GaleriaViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width/2.07, height: view.frame.height/5.6)
        //return CGSize(width: 150, height: 150)
    }
    
}
