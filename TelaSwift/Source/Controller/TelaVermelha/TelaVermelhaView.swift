//
//  TelaVermelhaView.swift
//  TelaSwift
//
//  Created by IFBIOTIC08 on 03/07/23.
//

import Foundation
import UIKit

class TelaVermelhaView: UIView {
    override init(frame: CGRect) {
        //chama o frame da superclasse
        super.init(frame: frame)
        // muda a cor de fundo do app para branco
        self.backgroundColor = .viewBackGroundColor3
        setupVisualElements()
        
    }
    var onTelaAzulTap: (() -> Void)?
    var onTelaVerdeTap: (() -> Void)?
    
        var buttonTelaAzul = ButtonDefault(botao: "Ir para a tela azul ")
        
        //cria a função com as propriadades do botão registrar
        var buttonTelaVerde = ButtonDefault(botao: "Voltar para a tela verde")
            
        
        func setupVisualElements() {

            self.addSubview(buttonTelaAzul)
            self.addSubview(buttonTelaVerde)
            
            buttonTelaAzul.addTarget(self, action: #selector(TelaAzulTap), for: .touchUpInside)
            buttonTelaVerde.addTarget(self, action: #selector(TelaVerdeTap), for: .touchUpInside)

            
            NSLayoutConstraint.activate([

                buttonTelaAzul.widthAnchor.constraint(equalToConstant: 374),
                buttonTelaAzul.heightAnchor.constraint(equalToConstant: 60),
                buttonTelaAzul.topAnchor.constraint(equalTo: self.topAnchor, constant: 420),
                buttonTelaAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                buttonTelaAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
                
                buttonTelaVerde.widthAnchor.constraint(equalToConstant: 374),
                buttonTelaVerde.heightAnchor.constraint(equalToConstant: 60),
                buttonTelaVerde.topAnchor.constraint(equalTo: self.topAnchor, constant: 440),
                buttonTelaVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                buttonTelaVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),


            
            ])
        }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    @objc
    private func TelaAzulTap(){
        onTelaAzulTap?()
    }
    @objc
    private func TelaVerdeTap(){
        onTelaVerdeTap?()
    }
        
    }

  

