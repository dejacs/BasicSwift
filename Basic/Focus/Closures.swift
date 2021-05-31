//
//  Service.swift
//  Basic
//
//  Created by Jade Silveira on 27/05/21.
//

import Foundation

class Service {
    func usaFetch() {
        fetchSomething {
            print("Fazer algo após terminar a função fetchSomething")
        }
        
        fetchOtherSomething { stringRetornada in
            print(stringRetornada)
        }
        
        fetchAnotherSomething(id: 2) { stringRetornada in
            print(stringRetornada)
        }
        
        fetchSomethingElse(id: 3) { resultado in
            switch resultado {
            case .success(let contact):
                print("Trabalho com o retorno de sucesso e o objeto contact \(contact)")
            case .failure(let error):
                print("Redireciono para uma tela de erro ou algo do tipo \(error.localizedDescription)")
            }
        }
        
        let alsoIncrementByTen = incrementByTen
        alsoIncrementByTen()

        incrementByTen()
    }
    
    var value = 0
    
    func incrementByTen() {
        value += 10
    }
    
    func fetchSomething(completou: () -> Void) {
        // faz alguma lógica
        completou()
    }
    
    func fetchOtherSomething(completou: (String) -> Void) {
        let umaVariavel = "Retorno de um serviço"
        // faz alguma lógica
        completou(umaVariavel)
    }
    
    func fetchAnotherSomething(id: Int, completou: (String) -> Void) {
        print("Posso fazer uma requisição passando esse id como parâmetro: \(id)")
        let umaVariavel = "Retorno de um serviço"
        completou(umaVariavel)
    }
    
    func fetchSomethingElse(id: Int, completou: (Result<Contact, MeuErro>) -> Void) {
        print("Posso fazer uma requisição passando esse id como parâmetro: \(id)")
        
        // Retorno sucesso passando um contato. Result é como um enum na forma de utilizar
        completou(.success(Contact()))
        
        // Retorno um erro que eu criei (MeuErro) desde este que implemente Error
        completou(.failure(.generic))
    }
}

struct Contact: Codable {
    
}

enum MeuErro: Error {
    case generic
}
