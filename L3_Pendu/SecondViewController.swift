//
//  SecondViewController.swift
//  L3_Pendu
//
//  Created by etudiant on 4/26/21.
//  Copyright © 2021 etudiant. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
 var bool = false
  var affiche = ""
   // @IBOutlet weak var AfficheMot: UILabel!
    
    @IBOutlet weak var AfficheMot: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if bool{
            AfficheMot.text = "Le mot à trouver était" + "" + affiche
        }

        // Do any additional setup after loading the view.
    }
    

    

}
