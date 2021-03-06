//
//  HomeViewModel.swift
//  MVVM-C
//
//  Created by TQI on 24/05/2018.
//  Copyright © 2018 Luis Teodoro. All rights reserved.
//

import UIKit

class HomeViewModel {
    
    var homeModel: HomeModel?
    var changeController = Observable(HomeRoute.login)

    init(with model: HomeModel) {
        self.homeModel = model
    }
    
    func changeViewLogin()  {
        changeController.value = HomeRoute.login
    }
}
