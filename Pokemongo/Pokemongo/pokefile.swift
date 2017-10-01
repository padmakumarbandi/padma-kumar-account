//
//  pokefile.swift
//  Pokemongo
//
//  Created by IOS DEVELOPER on 8/20/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import Foundation
import Alamofire



class Pokeman  {
    
    fileprivate var _name : String!
    fileprivate var _pokemonid : Int!
    fileprivate var _description:String!
    fileprivate var _type:String!
    fileprivate var _defense:String!
    fileprivate var _height:String!
    fileprivate var _pokeid:String!
    fileprivate var _weight:String!
    fileprivate var _backAttack:String!
    fileprivate var _nxtEvlutnTxt:String!
     fileprivate var _nxtEvlutnName:String!
     fileprivate var _nxtEvlutnId:String!
     fileprivate var _nxtEvlutnLevel:String!
    fileprivate var _pokemonURL:String!
    
    var nxtEvlutnName: String{
        
        if _nxtEvlutnName == nil{
            
            _nxtEvlutnName = ""
            
        }
        return _nxtEvlutnName
    }
    
    var nxtEvlutnId: String{
        
        if _nxtEvlutnId == nil{
            
           _nxtEvlutnId = ""
            
        }
        return _nxtEvlutnId
    }
    
    var nextEvolutionLevelPaddu: String{
        
        if _nxtEvlutnLevel == nil{
            
            _nxtEvlutnLevel = ""
            
        }
        return _nxtEvlutnLevel
    }
    

    
    
    
    var defense:String{
        
        if _defense == nil{
            
            _defense = ""
        }
        return _defense
    }
    var weight:String{
        
        if _weight == nil{
            
            _weight = ""
        }
        return _weight
    }
    var type:String{
        
        if _type == nil{
            
            _type = ""
        }
        return _type
    }
    
    var description:String{
        
        if _description == nil{
            
            
         _description = ""
        }
        return _description
    }
    
    var pokeid:String{
        
        if _pokeid == nil{
            
          _pokeid = ""
        }
        return _pokeid
    }
    
    var height :String{
        
        if _height == nil{
            
            _height = ""
        }
        return _height
    }
    
    
    
    var backAttack:String{
        
        if _backAttack == nil{
            
            _backAttack = ""
        }
        return _backAttack
    }
    
    
    var nxtEvlutnTxt: String{
    
        if _nxtEvlutnTxt == nil{
            
            _nxtEvlutnTxt = ""
            
        }
        return _nxtEvlutnTxt
    }
    

    
    var name : String{
        
        return _name
    }
    
    var pokemonid: Int{
        
        return _pokemonid
    }
    
    init(name: String, pokemonid: Int) {
        self._name = name;
        self._pokemonid = pokemonid
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self.pokemonid)/"
    }
    
    func downloadPokemonDetail(_ Completed:@escaping Downloadcompleted){
        _name = .none
        
        Alamofire.request(_pokemonURL).responseJSON { (response) in
            guard let dict = response.result.value as? Dictionary<String, AnyObject>
                else { return }
            if let weight = dict["weight"] as? String{
                self._weight = weight
            }
            if let height = dict["height"] as? String{
                self._height = height
            }
            if let attack = dict["attack"] as? Int{
                self._backAttack = "\(attack)"
                
                
            }
            if let defense = dict["defense"] as? Int{
                self._defense = "\(defense)"
            }
            print(self._backAttack)
            if let types = dict["types"] as? [Dictionary<String, String>] , types.count > 0 {
                
                if let name = types[0]["name"]{
                    self._type = name.capitalized
                }
                
                if types.count > 1 {
                    for x in 1..<types.count {
                        if let name = types[x]["names"]{
                            self._type! += "/\(name.capitalized)"
                            
                        }
                    }
                    
                    print(self.type) }
                    
                else{
                    self._type = ""
                    
                }
                
                if let descArray = dict["descriptions"] as? [Dictionary<String, String>] , descArray.count > 0 {
                    if let url = descArray [0]["resource_url"]{
                        
                        let descURL = "\(URL_BASE)\(url)"
                        
                        
                        //                            print(responseObject)
                        Alamofire.request(descURL).responseJSON(completionHandler:{ (response) in
                            //                           Alamofire.request(.GET, descURL).responseJSON { (responseObject) -> Void in
                            if let descDict = response.result.value as? Dictionary<String, AnyObject> {
                                if let description = descDict["description"]as? String {
                                    print(description)
                                    let newDescription = description.replacingOccurrences(of: "POKMON", with: "Pokemon")
                                    self._description = newDescription
                                }
                            }
                            
                            Completed()
                            
                        })
                    }else{
                        self._description = ""
                    }
                    if let evolutions = dict["evolutions"] as? [Dictionary<String, AnyObject>], evolutions.count > 0{
                        if let nextEvo = evolutions[0]["to"] as? String {
                            if nextEvo.range(of: "mega") == nil{
                                self._nxtEvlutnName = nextEvo
                                if let uri = evolutions[0]["resource_uri"] as? String {
                                    let newStr = uri.replacingOccurrences(of:"/api/v1/pokemon/", with:" ")
                                    let nxtEvoId = newStr.replacingOccurrences(of:"/", with: "")
                                    
                                    
                                    self._nxtEvlutnId = nxtEvoId
                                    if let levelExist = evolutions[0]["level"]{
                                        if let level = levelExist as? Int {
                                            self._nxtEvlutnLevel = "\(level)"
                                        }else{
                                            self._nxtEvlutnLevel = ""
                                        }
                                        
                                        
                                        
                                        
                                        
                                    }
                                }
                            }
                            
                        }
                        
                    }
                    
                }
                Completed()
                
                
            }
        }
    }
}





