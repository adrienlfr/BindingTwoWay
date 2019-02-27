//
//  UIControls+Bindable.swift
//  MVVM
//
//  Created by Adrien Lefaure on 27/02/2019.
//  Copyright © 2019 Adrien Lefaure. All rights reserved.
//

import Foundation
import UIKit

extension UITextField : Bindable {
    public typealias BindingType = String
    
    public func observingValue() -> String {
        return self.text ?? ""
    }
    
    public func updateValue(with value: String) {
        self.text = value
    }
}

extension UILabel : Bindable {
    public typealias BindingType = String
    
    public func observingValue() -> String {
        return self.text ?? ""
    }
    
    public func updateValue(with value: String) {
        self.text = value
    }
}
