//
//  Observable.swift
//  MVVM-C
//
//  Created by TQI on 24/05/2018.
//  Copyright © 2018 Luis Teodoro. All rights reserved.
//

class Observable<T> {
    fileprivate var _value: T?
    var didChange: ((T) -> Void)?
    var value: T {
        set {
            _value = newValue
            didChange?(_value!)
        }
        get {
            return _value!
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    deinit {
        _value = nil
        didChange = nil
    }
}
