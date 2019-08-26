//
//  ButtonView.swift
//  Monza
//
//  Created by Alexandre Thadeu on 23/08/19.
//  Copyright © 2019 iCarros Ltda. All rights reserved.
//

import UIKit

@IBDesignable
open class Button: UIButton {
    
    var _style = ButtonStyleId.whiteBlueButton
    @IBInspectable var type: Int = ButtonStyleId.whiteBlueButton.rawValue {
        didSet {
            self._style = ButtonStyleId(rawValue: self.type) ?? .whiteBlueButton
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
        switch _style {
        case .whiteBlueButton:
            let button = WhiteBlueButtonStyle()
            button.setup(button: self)
        
        case .blueButton:
            let button = BlueButtonStyle()
            button.setup(button: self)
        
        case .whiteOrangeButton:
            let button = WhiteOrangeButtonStyle()
            button.setup(button: self)
            
        case .orangeButton:
            let button = OrangeButtonStyle()
            button.setup(button: self)
        }
    }
}
