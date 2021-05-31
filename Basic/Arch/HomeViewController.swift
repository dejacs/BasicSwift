//
//  HomeViewController.swift
//  Basic
//
//  Created by Jade Silveira on 31/05/21.
//

import UIKit

class HomeViewController: UIViewController {
    private let interactor: HomeInteractor
    
    init(interactor: HomeInteractor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) { nil }
}
