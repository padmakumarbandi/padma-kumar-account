//
//  PokemonDetailVC.swift
//  Pokemongo
//
//  Created by IOS DEVELOPER on 8/23/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import UIKit



class PokemonDetailVC: UIViewController {
    var pokemon: Pokeman!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var mainimglabel: UILabel!
    
    @IBOutlet weak var Typelabl: UILabel!
    
    
    @IBOutlet weak var Defenselabel: UILabel!
    
    
    @IBOutlet weak var Heightlabel: UILabel!
    
    
    @IBOutlet weak var Pokemonidlabel: UILabel!
    
    @IBOutlet weak var Weightlabl: UILabel!
    
    
    @IBOutlet weak var Backattacklabl: UILabel!
    
    @IBOutlet weak var Evalutnlabl: UILabel!
    
    @IBOutlet weak var CurrentImg: UIImageView!
    
    
    @IBOutlet weak var NxtImg: UIImageView!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = pokemon.name.capitalized 
       let img = UIImage.init(named: "\(pokemon.pokemonid)")
        mainImage.image = img
        CurrentImg.image = img
        Pokemonidlabel.text = "\(pokemon.pokemonid)"
        
        
        
        
        pokemon.downloadPokemonDetail {
            //code id write only after network call is done.
            self.UpdateUI()
            
        }

        
    }
    func UpdateUI () {
        
        Heightlabel.text = pokemon.height
        Weightlabl.text = pokemon.weight
        Backattacklabl.text = pokemon.backAttack
        Defenselabel.text = pokemon.defense
        Typelabl.text = pokemon.type
    mainimglabel.text = pokemon.description
        if pokemon.nxtEvlutnId == "" {
            Evalutnlabl.text = "no evolution"
            NxtImg.isHidden = true
        }else {
            NxtImg.isHidden = false
            NxtImg.image = UIImage(named:pokemon.nxtEvlutnId)
            
            let str = "Next Evolution:\(pokemon.nxtEvlutnName)- level \(pokemon.nextEvolutionLevelPaddu)"
            Evalutnlabl.text = str 
        }

        
    }
    
    
    @IBAction func Backbutn(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
}
