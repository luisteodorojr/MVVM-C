//
//  AppCoordinator.swift
//  MVVM-C
//
//  Created by TQI on 24/05/2018.
//  Copyright © 2018 Luis Teodoro. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
    var window: UIWindow
    
    var loginCoordinator: LoginCoordinator?

    required init(window: UIWindow) {
        self.window = window
        self.window.makeKeyAndVisible()
    }
    
    func start() {
        loginCoordinator = LoginCoordinator(window: self.window)
        loginCoordinator?.start()
    }
}
