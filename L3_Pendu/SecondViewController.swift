//
//  SecondViewController.swift
//  L3_Pendu
//
//  Created by etudiant on 4/26/21.
//  Copyright © 2021 etudiant. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
var theme = 0
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    if segue.identifier == "resultat"{
        let VCDestination = segue.destination as! ViewController
            VCDestination.Theme = theme
        print("je suis dans seconde View")
    }
    }
    

    @IBAction func rejouer(_ sender: UIButton) {
         performSegue(withIdentifier: "resultat", sender: nil)
        print("Le bouton est tapper ")
    }
    

}
