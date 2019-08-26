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
    
    var style = ButtonStyleId.whiteBlueButton
    @IBInspectable var type: Int = ButtonStyleId.whiteBlueButton.rawValue {
        didSet {
            self.style = ButtonStyleId(rawValue: self.type) ?? .whiteBlueButton
            self.refreshButton(style)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        refreshButton(style)
    }
    
    required public init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
        refreshButton(style)
    }
    
    override open func prepareForInterfaceBuilder() {
       refreshButton(style)
    }
    

    func refreshButton(_ styleId: ButtonStyleId) {
        switch styleId {
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
