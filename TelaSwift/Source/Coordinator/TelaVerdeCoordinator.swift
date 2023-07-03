//
//  TelaVerdeCoordinator.swift
//  TelaSwift
//
//  Created by IFBIOTIC08 on 03/07/23.
//

import Foundation
import UIKit
class TelaVerdeCoordinator: Coordinator {
    
     var navigationController: UINavigationController
      
      init (navigationController: UINavigationController ) {
             self.navigationController = navigationController
       
        }

    func start() {
         let viewController = TelaVerdeViewController()
            self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onTelaAzulTap = {
            self.gotoVerde()
        }
        
        viewController.onTelaVermelhaTap = {
            self.gotoVermelho()
        }

  }

  //função que chama a registerView
  func  gotoVerde() {
      self.navigationController.popViewController(animated: true)
  }
    func  gotoVermelha() {
        self.navigationController.popViewController(animated: true)
    }
}
