//
//  ViewController.swift
//  2019-06-09-MODEL-VIEW-CONTROLLER
//
//  Created by Digital House on 08/06/19.
//  Copyright © 2019 Digital House. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var controller : ContatosController?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.controller = ContatosController()
        self.controller?.getListContatos()
        
    }


}

