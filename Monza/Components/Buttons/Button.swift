//
//  ButtonView.swift
//  Monza
//
//  Created by Alexandre Thadeu on 23/08/19.
//  Copyright © 2019 iCarros Ltda. All rights reserved.
//

import UIKit

open class Button: UIButton {
    
    @IBInspectable private var type: Int {
        set {
            self.type = newValue
        }
        get {
            return self.type
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
       setup()
    }
    
    func setup() {
        switch type {
        case 0:
            let button = WhiteBlueButtonStyle()
            button.setup(button: self)
        
        case 1:
            let button = BlueButtonStyle()
            button.setup(button: self)
        
        case 2:
            let button = WhiteOrangeButtonStyle()
            button.setup(button: self)
            
        case 3:
            let button = OrangeButtonStyle()
            button.setup(button: self)
            
        default:
            let button = WhiteBlueButtonStyle()
            button.setup(button: self)
        }
    }

}
