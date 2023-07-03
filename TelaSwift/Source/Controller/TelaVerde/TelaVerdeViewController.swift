//
//  TelaVerdeViewController.swift
//  TelaSwift
//
//  Created by IFBIOTIC08 on 03/07/23.
//

import Foundation
import UIKit

class TelaVerdeViewController: UIViewController {
    
    var onTelaVerdeTap: (() -> Void)?
    
    
    
    lazy var TelaAzul: TelaAzulView = {
        let TelaAzul = TelaAzulView()
        TelaAzul.onTelaVerdeTap = {
            self.onTelaVerdeTap?()
        }
        return TelaAzul
    }()
    
       override func loadView(){
           self.view = TelaAzul
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Tela Verde"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
