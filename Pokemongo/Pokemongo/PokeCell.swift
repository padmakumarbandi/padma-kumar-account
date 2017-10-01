//
//  PokeCell.swift
//  Pokemongo
//
//  Created by IOS DEVELOPER on 8/20/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    
    @IBOutlet weak var thumbImg : UIImageView!
    @IBOutlet weak var nameLbl : UILabel!
    
    var pokemon :Pokeman!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        
        
    }
    
    
    
    
    
    func configureCell(_ pokemon: Pokeman){
        
        self.pokemon  = pokemon
        nameLbl.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named: "\(self.pokemon.pokemonid)")
        
        
        
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
