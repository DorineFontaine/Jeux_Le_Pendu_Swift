//
//  PopUPViewController.swift
//  L3_Pendu
//
//  Created by etudiant on 5/7/21.
//  Copyright © 2021 etudiant. All rights reserved.
//

import UIKit

class PopUPViewController: UIViewController {
    var word = ""
    var tab = [String]()
    var theme = 0 
    var alea = 0
    var indice = ["Premiere Puissance Mondiale ","Votka","Capitale du Japon","Capitale de de la France","Quelque chose qui miaule","Quelque chose qui aboie",
    "Pour les petits","Crocodile","Quatre cercle","Japonaise","Vert","Orange","Quatre cercle","Japonaise","Quelque chose qui miaule",
    "Quelque chose qui aboie","Capitale du Japon","Capitale de de la France"]

    override func viewDidLoad() {
        super.viewDidLoad()
        popUpView.layer.cornerRadius = 10
        popUpView.clipsToBounds = true
        print(word)
        print(alea)
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var lettreAffiche: UIButton!
    
    @IBOutlet weak var afficheIndice: UIButton!
    @IBOutlet weak var popUpView: UIView!
    
    
    @IBAction func dismissPopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func indice(_ sender: UIButton) {
        switch theme {
       
            
        case 0 :
            afficheIndice.setTitle( indice[alea], for: .normal)
              break
          case 1 :
             afficheIndice.setTitle( indice[alea+2], for: .normal)
              break
              
          case 2 :
             afficheIndice.setTitle( indice[alea+4], for: .normal)
              break
              
          case 3 :
             afficheIndice.setTitle( indice[alea+6], for: .normal)
              break
              
          case 4 :
              afficheIndice.setTitle( indice[alea+8], for: .normal)
              break
          
          case 5 :
               afficheIndice.setTitle( indice[alea+10], for: .normal)
              break
              
          case 6 :
              afficheIndice.setTitle( indice[alea+12], for: .normal)
              break
              
        default:
            afficheIndice.setTitle( indice[alea+12], for: .normal)  }
    }
    

    @IBAction func lettre(_ sender: UIButton) {
        
        for i in word {
            if (tab.isEmpty){ lettreAffiche.setTitle(String(i), for: .normal)}
            else{
                while(!tab.isEmpty){
                               var  j=0
                               if String(i) != tab[j]{
                                   lettreAffiche.setTitle(String(i), for: .normal) }
                    j += 1
                }
                
            }}}
    


}
