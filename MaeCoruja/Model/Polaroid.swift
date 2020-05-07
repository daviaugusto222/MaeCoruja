//
//  Polaroid.swift
//  MaeCoruja
//
//  Created by David Augusto on 30/04/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import Foundation

struct Polaroid {
    var titulo: String
    var fotoNome: String
    var data: String
    var texto: String
    
    //Mock
    
    static func createPolaroid() -> Polaroid {
        return Polaroid(titulo: "O primeiro chute", fotoNome: "chute", data: "10.05.2020", texto: "Um dia lindo pipipipopopo")
    }
    
    static func createPolaroidCollection() -> [Polaroid] {
        var polaroids = [Polaroid]()
        for _ in 0...5 {
            polaroids.append(Polaroid(titulo: <#String#>, fotoNome: <#String#>, data: <#String#>, texto: <#String#>))
            
        }
    }
    
}
