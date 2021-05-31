//
//  HomePresenter.swift
//  Basic
//
//  Created by Jade Silveira on 31/05/21.
//

import Foundation

class HomePresenter {
    private let coordinator: HomeCoordinator
    weak var viewController: HomeViewController?
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
    
    func present(contacts: [Contact]) {
        
    }
    
    func presentErro() {
        
    }
}
