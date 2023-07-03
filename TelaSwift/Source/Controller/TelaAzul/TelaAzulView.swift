//
//  TelaAzulView.swift
//  TelaSwift
//
//  Created by IFBIOTIC08 on 03/07/23.
//

import Foundation
import UIKit

class TelaAzulView: UIView {
    
    var buttonTelaVerde = ButtonDefault(botao: "Ir para a tela verde ")
    func setupVisualElements() {

    self.addSubview(buttonTelaVerde)
        NSLayoutConstraint.activate([

    buttonTelaVerde.widthAnchor.constraint(equalToConstant: 374),
    buttonTelaVerde.heightAnchor.constraint(equalToConstant: 60),
    buttonTelaVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
    buttonTelaVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
    
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
