//
//  ViewController.swift
//  L3_Pendu
//
//  Created by etudiant on 4/23/21.
//  Copyright © 2021 etudiant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {    //test
    //TABLEAU
    var PAY = ["CHINE","RUSSIE"]
    var VILLE = ["TOKYO","PARIS"]
    var ANIMAUX = ["CHAT","CHIEN"]
    var VETEMENT = ["KIABI","LACOSTE"]
    var FRUIT = ["COURGETTE","CAROTTE"]
    var VOITURE  = ["TOYOTA","FIAT"]
    var ALEA = ["TOYOTA","FIAT","CHAT","CHIEN","TOKYO","PARIS"]
    
    
    
    //VARIABLE
    var word = ""
    var letter_found = 0
    var win = false
    var error = 0
    var victoire = false;
    var WordFound = ""
    var Theme = 0
    var T = [String]()
    var phrases : NSArray!
    var tab = [String]()
    var letterUse = [String]()
    var index = 0
    
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initGame()
  //      let path = Bundle.main.path(forResource:"ALEA", ofType: "plist")
   //     phrases = NSArray.init(contentsOfFile: path!)
    }

    @IBOutlet weak var imagePendu: UIImageView!
    
    
    
    func initGame(){
       
        
        setTheme(theme: Theme)
        var tiret = ""
        word = getRandomPhrase(theme: T)
        letter_found = 0
        win = false
        error = 0
        victoire = false
        imagePendu.image = UIImage(named: "first" )
        for i in 1...word.count{
            tiret += " _ " + " "
            container.text = tiret
            tab.append(" _ ") }
        
        
    }
    
   
       func MiseAjour() ->String {
        var Affiche = ""
        for i in 1...word.count{
                Affiche.append(tab[i-1])
                
        }
        container.text = Affiche
        return Affiche}
      
       
   
    func containerAffiche( lettre : String){
        var tiret = " "
           var i = 0
           for c in word{
               if (c == Character(lettre)){
                   tiret += lettre
                   tab[i] = lettre
                    }
            i += 1}
            MiseAjour()
          }
    
    
    @IBOutlet weak var container:UILabel!
    
    @IBAction func pushButton(_ sender: UIButton) {
        let lettre_tapper = sender.currentTitle!
        winOrNot(letter: lettre_tapper)
        containerAffiche(lettre: lettre_tapper)
        sender.isEnabled = false
        
        
       
    }
    
    func isIn(letter: String) -> Bool
           {
            
            var victoire = false
            for c in word
               {    if c  == Character(letter)
                        {    letter_found += 1
                            letterUse.append(letter)
                             victoire = true}
            
            }
            return victoire }
    
    
        func winOrNot( letter : String){
            
            if letter_found == word.count-1
            {
                win = true
                performSegue(withIdentifier: "victoire", sender: nil)
                
            }
            
            if !isIn(letter : letter) { error += 1  }
            setImage(erreur: error)
            
            if error == 7
             {
                win = false
                performSegue(withIdentifier: "victoire", sender: nil)}}
    
    /****************************************************************************************MARCHE************************************************************************/
    
        func setImage(erreur : Int )
        {
            switch erreur  {
                
            case 1 :
                imagePendu.image = UIImage(named: "second" )
                break
            case 2 :
                imagePendu.image = UIImage(named: "third")
                break
                
            case 3 :
                imagePendu.image = UIImage(named: "four")
                break
                
            case 4 :
                imagePendu.image = UIImage(named: "five")
                break
                
            case 5 :
                imagePendu.image = UIImage(named: "six")
                break
            
            case 6 :
                imagePendu.image = UIImage(named: "seven")
                break
                
            case 7 :
                imagePendu.image = UIImage(named: "image")
                break
                
          default:
                print("je ne fais rien ")}}
    
    
    
    func setTheme(theme : Int )
    {
        switch theme  {
            
        case 0 :
            T = PAY
            break
        case 1 :
            T = VILLE
            break
            
        case 2 :
            T = ANIMAUX
            break
            
        case 3 :
            T = VETEMENT
            break
            
        case 4 :
            T = VOITURE
            break
        
        case 5 :
            T = FRUIT
            break
            
        case 6 :
            T = ALEA
            break
            
      default:
          T = ALEA   }}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "victoire"{
            let VCDestination = segue.destination as! SecondViewController
                VCDestination.bool = win
                VCDestination.theme = Theme
                VCDestination.affiche = word
        }
        else if segue.identifier == "popUp"{
            
                let VCDestination = segue.destination as! PopUPViewController
                    VCDestination.tab = letterUse
                    VCDestination.alea = index
                    VCDestination.word = word
                    VCDestination.theme = Theme
            }}
    
    
    
   
    @IBAction func aide(_ sender: UIButton) {
        performSegue(withIdentifier: "popUp", sender: nil)
        
    }
    /***********************************Lecture des fichier texte  **************************************************/
    func getRandomPhrase(theme :[String] ) -> String!
    {
        index = Int(arc4random_uniform(UInt32(theme.count)))
        return theme[index]
       // return phrases.object(at: 2) as! String
        
    }
    
    
    
}

