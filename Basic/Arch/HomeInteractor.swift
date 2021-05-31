//
//  HomeInteractor.swift
//  Basic
//
//  Created by Jade Silveira on 31/05/21.
//

import Foundation

class HomeInteractor {
    private let presenter: HomePresenter
    private let service: HomeService
    
    init(presenter: HomePresenter, service: HomeService) {
        self.presenter = presenter
        self.service = service
    }
    
    func initialFetch() {
        service.fetchContacts { [weak self] result in
            switch result {
            case .success(let contacts):
                self?.presenter.present(contacts: contacts)
            case .failure:
                self?.presenter.presentErro()
            }
        }
    }
}
