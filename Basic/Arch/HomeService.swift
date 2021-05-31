//
//  HomeService.swift
//  Basic
//
//  Created by Jade Silveira on 31/05/21.
//

import Foundation

class HomeService {
    var handler: ((Result<[Contact], MeuErro>) -> Void)? // armazena o interactor na service indiretamente
    
    func fetchContacts(completou: @escaping (Result<[Contact], MeuErro>) -> Void) {
        handler = completou
    }
}
