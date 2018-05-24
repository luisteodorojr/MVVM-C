//
//  HomeCoordinator.swift
//  MVVM-C
//
//  Created by TQI on 24/05/2018.
//  Copyright © 2018 Luis Teodoro. All rights reserved.
//

import UIKit

enum HomeRoute {
    case login
}

class HomeCoordinator: Coordinator {
    var window: UIWindow
    var model : HomeModel?
    var viewModel: HomeViewModel?
    var homeController: HomeViewController?
    var loginCoordinator: LoginCoordinator?
    
    required init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        model                       = HomeModel()
        viewModel                   = HomeViewModel(with: model!)
        homeController              = HomeViewController(viewModel: viewModel!)
        window.rootViewController   = homeController
        
        viewModel?.changeController.didChange   = {  changeView in
            self.changeListeners(with: changeView)
        }
    }

    func changeListeners(with state: HomeRoute)  {
        switch state {
        case .login:
            self.loginCoordinator = LoginCoordinator(window: self.window)
            self.loginCoordinator?.start()
        }
    }
}
