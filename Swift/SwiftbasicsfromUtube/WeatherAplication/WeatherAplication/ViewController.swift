//
//  ViewController.swift
//  WeatherAplication
//
//  Created by IOS DEVELOPER on 7/30/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
    
    
    
    @IBOutlet var searhbar: UISearchBar!
    
    @IBOutlet var citylabel: UILabel!
    
    
    @IBOutlet var weatherConditionlabe: UILabel!
    
    
    @IBOutlet var degreelabel: UILabel!
    
    
    
    @IBOutlet var imagvw: UIImageView!
    var degree : Int!
    var condition:String!
    var imageUrl:String!
    var city:String!
    var exists:Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searhbar.delegate = self;
        
        func searchBarSearchButtonClicked(_searchBar: UISearchBar){
            
            let urlRequest = URLRequest(url:URL(string: "http://api.apixu.com/v1/current.json?key=5f5a651cce6a49769d923652173107&q\(searhbar.text!.replacingOccurrences(of: " ", with: "%20"))")!)
            let task = URLSession.shared.dataTask(with: urlRequest) {(data, response , error) in
                if error == nil{
                    do {
                        let json = try JSONSerialization.jsonObject(with:data!,options:.mutableContainers)as![String: AnyObject]
                        if let current = json["current"] as? [String:AnyObject]{
                            if let temp = current["temp_c"]as? Int{
                                self.degree = temp
                            }
                            if let condition = current["condition"]as?[String: AnyObject] {
                                self.condition = condition["text"] as! String
                               let icon = condition["icon"] as!String
                                self.imageUrl = "http:\(icon)"
                            }
                        }
                        if let location = json["location"]as?[String:AnyObject]{
                            self.city = location["name"] as! String
                            
                        }
                        
                        if let _ = json ["error"]{
                            self.exists = false
                        }
                        DispatchQueue.main.async {
                            if self.exists{
                                self.degreelabel.isHidden = false
                                self.weatherConditionlabe.isHidden = false;
                                self.imagvw.isHidden = false``
                                self.degreelabel.text = "ᵒ\(self.degree.description)"
                                self.citylabel.text = self.city
//                                self.imagvw.downloadImage(from self.imageUrl!)
                                self.weatherConditionlabe.text = self.condition
                            }else{
                                 self.degreelabel.isHidden = true
                                self.weatherConditionlabe.isHidden = true;
                                self.imagvw.isHidden = true
                                self.citylabel.text = "No matching found"
                                self.exists = true
                                
                            }
                        }
                    }catch let jsonError{
                        print(jsonError.localizedDescription)
                    }
                }
            }
          task.resume()
        }
        
    }
    func downloadImage(from url:String){
        let urlRequest = URLRequest(url:URL(string:url)!)
        let task = URLSession.shared.dataTasks(with: URLRequest){(data, response, error) in
            if error = nil{
                DispatchQueue.main.async {
                    self.image = UIimage(data:data!)
                    
                }
            }
            
            
        }
        
       task.resume()
        
    }
   

}

