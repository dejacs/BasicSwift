//
//  ViewController.swift
//  Basic
//
//  Created by Jade Silveira on 27/05/21.
//

import UIKit

class ViewController: UIViewController {
    typealias UmType = (String, Int)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Teste().olar()
    }

    /*
     Tipagens: String, Int, Double, Bool, CGFloat
     */
    
    let constante: String = "Uma constante"
    var variavel = 8
    var umArray = [String]()
    var umOpcional: Bool? // pode ser nulo
    
    var umaTupla: (String, Int) = ("Oi", 1)
    var outraTupla = (umParametro: "Olar", outroParametro: 2)
    
    func utilizacaoDeTupla() {
        print(umaTupla.0)
        print(outraTupla.outroParametro)
    }
    
    func chamadaType() {
        utilizacaoDeType(umParametro: ("habsjda", 3))
    }
    
    func utilizacaoDeType(umParametro: UmType) {
        print(umParametro.0)
    }
    
    func umaFuncao(primeiroParametro: Int) -> Int {
        primeiroParametro + 5
    }
    
    func addSomething() {
        umArray.append("Algum valor")
    }
    
    func tratamentoDeOpcional() {
        guard let variavelDesembrulhada = umOpcional else {
            // se opcional for nulo vai cair nesse else
            return
        }
        
        print(variavelDesembrulhada)
        
        if let outraVariavelDesembrulhada = umOpcional {
            print(outraVariavelDesembrulhada)
        }
    }
    
    enum UmEnum {
        case umCaso
    }
    
    enum OutroEnum {
        case umCaso(umAlias: String)
        case outroCaso(outroAlias: String)
        case maisUmOutro(maisUmOutro: String)
    }
    
    enum Error: String {
        case parseError = "Parse Error"
        case genericError = "Generic Error"
        case connectionError = "Connection Error"
    }
    
    enum Aba: Int {
        case transaction
        case pix
    }
    
    enum CoisasDeLayout {
        static let mensagemDeErro = "basbdkasdl"
        static let umaImage = UIImage()
    }
    
    func utilizacoesDeEnum() {
        print(UmEnum.umCaso)
        // Passando um alias
        let enumComAlias = OutroEnum.outroCaso(outroAlias: "Olar")
        
        switch enumComAlias {
        case .umCaso(let umAlias):
            print(umAlias)
        case let .outroCaso(outroAlias):
            print(outroAlias)
        case .maisUmOutro:
            print("")
        }
        
        let umErroDaAPI = Error.genericError.rawValue
    }
    
    func teste(isAvailable: Bool) {
        isAvailable ? print("Está disponível") : print("Está desabilitado")
        print(isAvailable ? "Está disponível" : "Está desabilitado")
        isAvailable ? print("Está disponível") : utilizacoesDeEnum()
    }
    
    func tiposDeFor() {
        let umaLista = [String]()
        
        for umItem in umaLista {
            print(umItem)
        }
        
        umaLista.forEach { item in
            print(item)
        }
    }
    
    func operadores() {
        let isAvailable = true
        let isOpen = false
        let isCaixa = true
        
        guard isAvailable, isOpen, isCaixa else {
            return
        }
        
        if isAvailable, isOpen, isCaixa {
            
        }
    }
    
    func returnNaoAceitaVirgula() -> Bool {
        let isAvailable = true
        let isOpen = false
        let isCaixa = true
        
        return isAvailable && isOpen && isCaixa
    }
}

