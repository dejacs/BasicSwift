//
//  HomeFactory.swift
//  Basic
//
//  Created by Jade Silveira on 31/05/21.
//

import UIKit

enum HomeFactory {
    static func make() -> UIViewController {
        let service = HomeService()
        let coordinator = HomeCoordinator()
        let presenter = HomePresenter(coordinator: coordinator)
        let interactor = HomeInteractor(presenter: presenter, service: service)
        let viewController = HomeViewController(interactor: interactor)
        
        coordinator.viewController = viewController
        presenter.viewController = viewController
        
        return viewController
    }
}


// Coordinator < Presenter < Interactor < ViewController
// Coordinator > ViewController

// Presenter < Interactor < ViewController
// Presenter > ViewController
