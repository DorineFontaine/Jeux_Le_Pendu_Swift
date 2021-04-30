//
//  ListViewController.swift
//  L3_Pendu
//
//  Created by etudiant on 4/29/21.
//  Copyright © 2021 etudiant. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    var tab = ["PAYS","VILLE","ANIMAUX", "VETEMENT","VOITURE","FRUIT","ALEATOIRE"]
    var tab2 = ["pays","ville","animaux", "vetement","voiture","fruit","pays"]
    var index = 0
    @IBOutlet weak var matabview: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tab.count
    }
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MaCell") as! MaCell
        
        cell.imageTheme.image = UIImage(named: tab2[indexPath.row])
        cell.label.text = tab[indexPath.row]
        
        
       
        return cell
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        performSegue(withIdentifier: "theme", sender: nil)
        
      
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
           if segue.identifier == "theme" {
               let VCDestination = segue.destination as! MenuViewController
                   VCDestination.theme = index
           }
          
           }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        matabview.dataSource = self
        matabview.delegate = self 


}
}
