//
//  LoginViewModel.swift
//  MVVM-C
//
//  Created by TQI on 24/05/2018.
//  Copyright © 2018 Luis Teodoro. All rights reserved.
//

import UIKit

class LoginViewModel {

    var loginModel: LoginModel?
    var changeController = Observable(LoginRoute.home)

    init(with model: LoginModel) {
        self.loginModel = model
    }
    
    func changeViewHome()  {
        changeController.value = LoginRoute.home
    }
}
