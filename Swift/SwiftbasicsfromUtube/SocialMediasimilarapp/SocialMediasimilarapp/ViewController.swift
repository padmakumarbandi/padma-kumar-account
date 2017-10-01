//
//  ViewController.swift
//  SocialMediasimilarapp
//
//  Created by IOS DEVELOPER on 7/31/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailfield: UITextField!
    
    
    @IBOutlet weak var paswdfiled: UITextField!
    
    var userUid:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func signInTaped(_sender: Any){
        
        if let email = emailfield.text, let paswd = paswdfiled.text{
            
                             if error == nil{
                    if let user = user{
                        self.userUid = user.uid
                        self.goToCreateUserVC()
                        //                        self.goToFeedVC()
                        
                    }
                }
                else {
                    self.goToCreateUserVC()
                }
                });
            }
        }
        func goToCreateUserVC(){
            performSegue(withIdentifier: "signupsegue", sender: nil)
            
        }
    
    func goToFeedVC(){
        performSegue(withIdentifier: "ToFeedSegue", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "signupsegue"{
            if let destination = segue.destination as? UserVC {
                
                
                if userUid != nil{
                    destination.userUid = userUid
                }
                if emailfield.text != nil{
                    destination.emailfield = emailfield.text
                    
                }
                if paswdfiled.text != nil{
                    destination.paswdfield = paswdfiled.text
                    
                }
                
                
            }
        }

    }
    
    
        
        
}













