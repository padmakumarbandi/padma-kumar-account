//
//  ViewController.swift
//  SocialApp
//
//  Created by IOS DEVELOPER on 8/1/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

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
    
    @IBAction func signInTaped(_sender: Any){
        if let email = emailfield.text, let password = paswdfiled.text{
            
            FIRAuth.auth()?.signIn(withEmail: email, password: password, completion:{
                (user,error) in
                if error == nil{
                    if let user = user{
                        self.userUid = user.uid
                    }
                }
            })
            
            
            
        }
        
    }
    
}

