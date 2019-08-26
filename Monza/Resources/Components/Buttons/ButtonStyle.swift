//
//  ButtonStyle.swift
//  Monza
//
//  Created by Alexandre Thadeu on 23/08/19.
//  Copyright © 2019 iCarros Ltda. All rights reserved.
//

import Foundation

/// Seguindo os padrões do iCarros feito pelo design disponível no link: https://projects.invisionapp.com/dsm/i-carros/i-carros-pf-v-1-0-1
/// Design Style para os botões
///
/// - whiteBlue: estilo para botão com fundo branco, e detalhes em azul (blueOne)
/// - whiteOrange: estilo para botão com fundo branco, e detalhes em laranja (orangeOne)
/// - blue: estilo para botão com fundo azul (blueOne), e texto em branco
/// - orange: estilo para botão com fundo azul (blueOne), e texto em branco

enum ButtonStyleId: Int {
    case whiteBlueButton = 0, blueButton, whiteOrangeButton, orangeButton
}

protocol ButtonStyle {
    func setup(button: Button)
}

class WhiteBlueButtonStyle: ButtonStyle {
    func setup(button: Button) {
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.Monza.Primary.blueOne.cgColor
        button.backgroundColor = .white
        button.tintColor = UIColor.Monza.Primary.blueOne
        button.layer.cornerRadius = 4
    }
}

class WhiteOrangeButtonStyle: ButtonStyle {
    func setup(button: Button) {
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.Monza.Secondary.orangeOne.cgColor
        button.backgroundColor = .white
        button.tintColor = UIColor.Monza.Secondary.orangeOne
        button.layer.cornerRadius = 4
    }
}

class BlueButtonStyle: ButtonStyle {
    func setup(button: Button) {
        button.backgroundColor = UIColor.Monza.Primary.blueOne
        button.tintColor = .white
        button.layer.cornerRadius = 4
        button.addShadow()
    }
}

class OrangeButtonStyle: ButtonStyle {
    func setup(button: Button)  {
        button.backgroundColor = UIColor.Monza.Secondary.orangeOne
        button.tintColor = .white
        button.layer.cornerRadius = 4
        button.addShadow()
    }
}
