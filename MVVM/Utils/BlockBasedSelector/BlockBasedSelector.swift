//
//  BlockBasedSelector.swift
//  MVVM
//
//  Created by Adrien Lefaure on 27/02/2019.
//  Copyright © 2019 Adrien Lefaure. All rights reserved.
//

import Foundation
import UIKit

func Selector(_ block: @escaping () -> Void) -> Selector {
    let selector = NSSelectorFromString("\(CACurrentMediaTime())")
    class_addMethodWithBlock(_Selector.self, selector) { (_) in block() }
    return selector
}

let Selector = _Selector.shared
@objc class _Selector: NSObject {
    static let shared = _Selector()
}
