//
//  ContatosDAO.swift
//  2019-06-09-MODEL-VIEW-CONTROLLER
//
//  Created by Digital House on 08/06/19.
//  Copyright © 2019 Digital House. All rights reserved.
//

import Foundation


class ContatosDAO {
    
    typealias completion <T> = (_ result: T, _ failure: Bool? ) -> Void
    
    
    func getListContatos(completion: @escaping completion<[Contato?]>) {
        
        if let path = Bundle.main.path(forResource: "contatos", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                
                if let _jsonResult = jsonResult as? Dictionary<String, AnyObject> {
                    // do stuff
                    print("Funcionou")
                    print (_jsonResult)
                    let contatos: [Contato] = []
                    completion (contatos, false)
                }
                
            } catch {
                // handle error
                print("NÃO Funcionou")
                completion([], true)
            }
        }

        

    }
    
}



