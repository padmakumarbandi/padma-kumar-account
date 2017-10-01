//
//  ViewController.swift
//  facebooklikeapp
//
//  Created by IOS DEVELOPER on 8/1/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import SwiftKeychainWrapper

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
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let _ = KeychainWrapper.standard.string(forKey: "uid"){
            goToFeedVC()
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

    
    @IBAction func signInTaped(_sender: Any){
        if let email = emailfield.text, let password = paswdfiled.text{
            
            FIRAuth.auth()?.signIn(withEmail: email, password: password, completion:{
                (user,error) in
                if error == nil{
                    if let user = user{
                        self.userUid = user.uid
//                        self.goToCreateUserVC()
                        self.goToFeedVC()
                    }
                    else{
                        self.goToCreateUserVC()
                    }
                }
            })
            
            
            
        }
        
    }
    
}

