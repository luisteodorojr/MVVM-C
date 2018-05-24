//
//  LoginCoordinator.swift
//  MVVM-C
//
//  Created by TQI on 24/05/2018.
//  Copyright © 2018 Luis Teodoro. All rights reserved.
//

import UIKit

enum LoginRoute {
    case home
}

class LoginCoordinator: Coordinator {
    var window: UIWindow
    var model : LoginModel?
    var viewModel: LoginViewModel?
    var loginController: LoginViewController?
    var homeCoordinator: HomeCoordinator?
    
    required init(window: UIWindow) {
         self.window = window
    }
    
    func start() {
        model                                   = LoginModel()
        viewModel                               = LoginViewModel(with: model!)
        loginController                         = LoginViewController(viewModel: viewModel!)
        window.rootViewController               = loginController
        viewModel?.changeController.didChange   = {  changeView in
            self.changeListeners(with: changeView)
        }
    }
    
    func stop() {
        
    }

    func changeListeners(with state: LoginRoute)  {
        switch state {
        case .home:
            self.homeCoordinator = HomeCoordinator(window: self.window)
            self.homeCoordinator?.start()
        }
    }
    
}
