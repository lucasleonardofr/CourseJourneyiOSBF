//
//  ViewController.swift
//  PrimeiroProjetoAcessibilidadeCurso
//
//  Created by Lucas Leonardo Freitas on 12/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    var screen: ViewControllerScreen?
    
    override func loadView() {
        screen = ViewControllerScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.setDelegate(delegate: self)
        configAccessibility()
    }
    
    func configAccessibility() {
        //isAccessibilityElement -> ele possibilita a leitura da acessibilidade
    
        screen?.positionOneLabel.isAccessibilityElement = true
        screen?.positionTwoLabel.isAccessibilityElement = true
        screen?.positionThreeLabel.isAccessibilityElement = true
        screen?.positionFourLabel.isAccessibilityElement = true
        screen?.positionFiveLabel.isAccessibilityElement = true
        screen?.loginButton.isAccessibilityElement = true
        screen?.titleLabel.isAccessibilityElement = true
        screen?.personImageView.isAccessibilityElement = true
        
        //accessibilityLabel -> é o que o voiceOver irá falar quando o cursor estiver no elemento
        
        screen?.positionOneLabel.accessibilityLabel = "Posição um"
        screen?.positionTwoLabel.accessibilityLabel = "Posição dois"
        screen?.positionThreeLabel.accessibilityLabel = "Posição três"
        screen?.positionFourLabel.accessibilityLabel = "Posição quatro"
        screen?.positionFiveLabel.accessibilityLabel = "Posição cinco"
        screen?.personImageView.accessibilityLabel = "Imagem de uma pessoa"
        
        //accessibilityTraits -> seta o tipo para o usuario, exemplo se é um botao, um texto qualquer, um titulo
        screen?.positionOneLabel.accessibilityTraits = .staticText
        screen?.positionTwoLabel.accessibilityTraits = .staticText
        screen?.positionThreeLabel.accessibilityTraits = .staticText
        screen?.positionFourLabel.accessibilityTraits = .staticText
        screen?.positionFiveLabel.accessibilityTraits = .staticText
        
        screen?.loginButton.accessibilityTraits = .button
        screen?.titleLabel.accessibilityTraits = .header
        screen?.personImageView.accessibilityTraits = .image

        
        guard let primeiro = screen?.positionOneLabel,
              let segundo = screen?.positionTwoLabel,
              let terceiro = screen?.positionThreeLabel,
              let quarto = screen?.positionFourLabel,
              let quinto = screen?.positionFiveLabel,
        let button = screen?.loginButton,
        let title = screen?.titleLabel,
        let image = screen?.personImageView else { return }
        
        //accessibilityElements -> ele ordena os elementos acessiveis de acordo a sua escolha
        
        view.accessibilityElements = [image, primeiro, segundo, terceiro, quarto, quinto, button, title]
    }
}

extension ViewController: ViewControllerScreenProtocol {
    func tappedLoginbutton() {
        //screenChanged -> a açao leva para um determinado lugar na tela de acordo com seu argument
        //announced -> fala a mensagem que vc quis colocar no argument
        UIAccessibility.post(notification: .screenChanged, argument: screen?.positionOneLabel)
    }
}
