//
//  AdicionarViewController.swift
//  MaeCoruja
//
//  Created by David Augusto on 06/05/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

protocol SaveMomentDelegate: class {
    func addMomment(moment: Polaroid)
}

class AdicionarViewController: UIViewController{

    @IBOutlet weak var tituloTextField: UITextField!
    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var textoRecordacao: UITextView!
    
    var imagePicker = UIImagePickerController()
    weak var delegate: SaveMomentDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        
        let saveButton = UIBarButtonItem(title: "Salvar", style: .done, target: self, action: #selector(save))
        self.navigationItem.rightBarButtonItem = saveButton
 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func save(){
        print("Salvou !")
        let pol = Polaroid.createPolaroid()
        delegate?.addMomment(moment: pol)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func editarFotoonClick(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
    }
    
}

extension AdicionarViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            fotoImageView.image = image
        }
        
        dismiss(animated: true, completion: nil)
        
    }
}
