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
    
    var polaroids: [Polaroid]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        polaroids = Polaroid.createPolaroidCollection()
        configureCollection()
        // Do any additional setup after loading the view.
    }
    
    private func configureCollection(){
        let collectionCellNib = UINib(nibName: PolaroidCollectionViewCell.nibName, bundle: nil)
        
        recordacoesCollection.register(collectionCellNib, forCellWithReuseIdentifier: PolaroidCollectionViewCell.identifier)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMoment" {
            let destination = segue.destination as! AdicionarViewController
            destination.delegate = self
        }
    }

}

extension RecordacoesViewController: SaveMomentDelegate {
    func addMomment(moment: Polaroid) {
        self.polaroids.insert(moment, at: 0)
        
        recordacoesCollection.performBatchUpdates({
            recordacoesCollection.insertItems(at: [IndexPath(item: 0, section: 0)])
        }, completion: nil)
        
    }
    
    
}

extension RecordacoesViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return polaroids.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PolaroidCollectionViewCell.identifier, for: indexPath) as! PolaroidCollectionViewCell
        let pol = polaroids[indexPath.row]
        cell.configure(with: pol)
        
        return cell
    }
    
    
}

extension RecordacoesViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width/1.1, height: view.frame.height/1.7)
    }
}
