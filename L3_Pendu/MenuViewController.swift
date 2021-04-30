//
//  MenuViewController.swift
//  L3_Pendu
//
//  Created by etudiant on 4/29/21.
//  Copyright © 2021 etudiant. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    var theme = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    if segue.identifier == "jouer"{
        let VCDestination = segue.destination as! ViewController
            VCDestination.Theme = theme }}
    

    @IBAction func infoTheme(_ sender: UIButton) {
        performSegue(withIdentifier: "jouer", sender: nil)
        
    }
    
}
