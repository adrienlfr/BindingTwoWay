//
//  NSObject+Observable.swift
//  MVVM
//
//  Created by Adrien Lefaure on 27/02/2019.
//  Copyright © 2019 Adrien Lefaure. All rights reserved.
//

import Foundation

extension NSObject {
    public func observe<T>(for observable: Observable<T>, with: @escaping (T) -> ()) {
        observable.bind { observable, value  in
            DispatchQueue.main.async {
                with(value)
            }
        }
    }
}
