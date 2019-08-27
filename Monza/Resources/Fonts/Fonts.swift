//
//  Fonts.swift
//  Monza
//
//  Created by Alexandre Thadeu on 23/08/19.
//  Copyright © 2019 iCarros Ltda. All rights reserved.
//

import Foundation

extension UIFont {
    
    public enum HelveticaNeueType: String {
        case extraboldItalic = "-ExtraboldItalic"
        case semiboldItalic = "-SemiboldItalic"
        case semibold = "-Semibold"
        case regular = ""
        case lightItalic = "Light-Italic"
        case light = "-Light"
        case italic = "-Italic"
        case extraBold = "-Extrabold"
        case boldItalic = "-BoldItalic"
        case bold = "-Bold"
    }
    
    static func HelveticaNeue(_ type: HelveticaNeueType = .regular, size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "HelveticaNeue\(type.rawValue)", size: size)!
    }
    
    var isBold: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitBold)
    }
    
    var isItalic: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitItalic)
    }
}
