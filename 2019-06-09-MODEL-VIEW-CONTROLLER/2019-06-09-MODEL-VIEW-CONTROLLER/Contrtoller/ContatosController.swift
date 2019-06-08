//
//  ContatosController.swift
//  2019-06-09-MODEL-VIEW-CONTROLLER
//
//  Created by Digital House on 08/06/19.
//  Copyright © 2019 Digital House. All rights reserved.
//

import Foundation

class ContatosController  {
    
    
    func getListContatos(){
        
        ContatosDAO().getListContatos { (sucess, failure) in
            
            if failure {
                print ("Deu muito errado ao carregar")
            } else {
                print("Deu certo na hora de carregar")
                print(sucess)
            }

        }
        
    }
    
}
