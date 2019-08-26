//
//  Colors.swift
//  Monza
//
//  Created by Alexandre Thadeu on 23/08/19.
//  Copyright © 2019 iCarros Ltda. All rights reserved.
//

import Foundation

extension UIColor {
    struct Monza {
       
        struct Primary {
            static var blueOne      :     UIColor { return UIColor().hexStringToUIColor(hex: "#004fcf") }
            static var blueTwo      :     UIColor { return UIColor().hexStringToUIColor(hex: "#0071ce") }
            static var blueThree    :     UIColor { return UIColor().hexStringToUIColor(hex: "#5da9e8") }
            static var blueFour     :     UIColor { return UIColor().hexStringToUIColor(hex: "#aad2f2") }
        }
        
        struct Secondary {
            static var orangeOne    :   UIColor { return UIColor().hexStringToUIColor(hex: "#f53900") }
            static var orangeTwo    :   UIColor { return UIColor().hexStringToUIColor(hex: "#f65e0a") }
            static var orangeThree  :   UIColor { return UIColor().hexStringToUIColor(hex: "#f57c3b") }
            static var orangeFour   :   UIColor { return UIColor().hexStringToUIColor(hex: "#f5ac84") }
        }
    }
}
