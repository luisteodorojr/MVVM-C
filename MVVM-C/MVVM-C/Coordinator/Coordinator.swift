//
//  Coordinator.swift
//  MVVM-C
//
//  Created by TQI on 24/05/2018.
//  Copyright © 2018 Luis Teodoro. All rights reserved.
//

import UIKit

protocol Coordinator: class {
    var window: UIWindow { get set }
    init(window: UIWindow)
    func start()
}
