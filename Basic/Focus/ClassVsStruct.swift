//
//  ClassVsStruct.swift
//  Basic
//
//  Created by Jade Silveira on 31/05/21.
//

import Foundation

class Abobora {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

struct Batata {
    var name: String
}

class Teste {
    func olar() {
        let abobora = Abobora(name: "Abobora")
        let batata = Batata(name: "Batata")
        
        let outraAbobora = abobora
        var outraBatata = batata
        
        print(abobora.name + " ----- " + outraAbobora.name)
        print(batata.name + " ----- " + outraBatata.name)
        
        outraAbobora.name = "Outra abobora"
        outraBatata.name = "Outra batata"
        
        print(abobora.name + " ----- " + outraAbobora.name)
        print(batata.name + " ----- " + outraBatata.name)
    }
}
