//
//  Fonts.swift
//  Monza
//
//  Created by Alexandre Thadeu on 23/08/19.
//  Copyright © 2019 iCarros Ltda. All rights reserved.
//

import Foundation

extension UIFont {
    struct Monza {
        var title: UIFont? = { return UIFont(name: "Helvetica-Neue", size: 18)?.bold() }()
        var body: UIFont? = { return UIFont(name: "Helvetica-Neue", size: 18)?.bold() }()
    }
}
