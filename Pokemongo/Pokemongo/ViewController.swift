//
//  ViewController.swift
//  Pokemongo
//
//  Created by IOS DEVELOPER on 8/20/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,  UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate, UISearchBarDelegate{
    
    var pokemon = [Pokeman]()
    var filteredPokemon = [Pokeman]()
    var inSearchMode = Bool()
    var musicplayer: AVAudioPlayer!
    
    @IBOutlet weak var Searchbar: UISearchBar!
    @IBOutlet weak var collecection: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    ParsePokemonCSV()
        initAudio()
        
     collecection?.delegate = self
  collecection?.dataSource = self
    Searchbar.delegate = self
     Searchbar.returnKeyType = UIReturnKeyType.done
    
    }
    
    func initAudio() {
        
        let path = Bundle.main.path(forResource: "music", ofType: "mp3")
        
        do {
            musicplayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicplayer.prepareToPlay()
            musicplayer.numberOfLoops = -1
            musicplayer.play()
            
        }
        catch let err as NSError{
            print(err.debugDescription)
            
            
        }
        
    }
    
    
    func ParsePokemonCSV(){
        
        
        let path = Bundle.main.path(forResource: "pokemon", ofType: "csv")!
        
        do {
            
            let csv = try CSV(contentsOfURL: path)
            let rows = csv.rows
            print(rows)
            for row in rows{
                
                let pokeId = Int(row["id"]!)!
                let name = row["identifier"]!
                let poke = Pokeman(name: name, pokemonid: pokeId)
                pokemon.append(poke)
            }
            
            
        }catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    
    
    
    //
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Pokecell", for: indexPath) as? PokeCell{
            
   /* best steps i have seen*/
            let poke: Pokeman!
            
            if inSearchMode {
                
                poke = filteredPokemon[indexPath.row]
                cell.configureCell(poke)
            } else{
                poke = pokemon[indexPath.row]
                cell.configureCell(poke)
            }
            
            
             return cell
        }else{
            return UICollectionViewCell()
        }
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        var poke: Pokeman!
        
        if inSearchMode {
            
            poke = filteredPokemon[indexPath.row]
            
        } else{
            poke = pokemon[indexPath.row]
           
        }
        
        performSegue(withIdentifier:"PokemonDetailVC", sender: poke)
        
        
        
        
        
        
        
        
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if inSearchMode{
            return filteredPokemon.count
        }
        return pokemon.count
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewlayout: UICollectionViewLayout, sizeForItemAt IndexPath: IndexPath) ->CGSize{
        
    
        
        return CGSize(width: 105, height: 105)
    }
   
    
    @IBAction func musicBtnPrsd(_ sender: Any) {
        
        if musicplayer.isPlaying{
            musicplayer.pause()
            (sender as! UIButton).alpha = 0.2
            
        }else{
            musicplayer.play()
      ( sender as! UIButton).alpha = 1.0
            
            
        
        }
        
    }
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
        
        if Searchbar.text == nil || Searchbar.text == ""{
            
            inSearchMode = false
            collecection?.reloadData()
        }else{
            
            inSearchMode = true
            let lowercase = Searchbar.text?.lowercased()
            
            filteredPokemon = pokemon.filter({$0.name.range(of: lowercase!) != nil})
            collecection?.reloadData()
        }
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PokemonDetailVC"{
            if let detailsVC = segue.destination as? PokemonDetailVC{
                if let poke = sender as? Pokeman {
                    detailsVC.pokemon = poke
                }
            }
            
        }
    }
}






