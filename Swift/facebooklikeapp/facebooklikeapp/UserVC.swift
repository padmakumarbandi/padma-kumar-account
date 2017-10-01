//
//  UserVC.swift
//  facebooklikeapp
//
//  Created by IOS DEVELOPER on 8/1/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseStorage
import FirebaseDatabase
import SwiftKeychainWrapper

class UserVC: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var userImagePicker: UIImageView!
    @IBOutlet weak var userNameTextfield: UITextField!
    @IBOutlet weak var completSignButn: UIButton!

    
    var userUid:String!
    var emailfield:String!
    var paswdfield:String!
    var imagepicker:UIImagePickerController!
    var imageSelected = false
    var userName:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imagepicker = UIImagePickerController()
        imagepicker.delegate = self
        imagepicker.allowsEditing = true
    }
    func keychain (){
        KeychainWrapper.standard.set(userUid, forKey: "uid")
    }
    
    
    
    
    
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerEditedImage] as? UIImage {
            userImagePicker.image = image
            imageSelected = true
            
        }else{
            print("image wasn't selected")
        }
        imagepicker.dismiss(animated: true, completion: nil)
    }
    func setUpUser (img: String){
        let userData = ["username":userName!, "userImg":img]
        let setLocation = FIRDatabase.database().reference().child("users").child(userUid)
        setLocation.setValue(userData)
    }
    

    func UploadingImage(){
        if userNameTextfield.text == nil{
            print("must have username")
            completSignButn.isEnabled = false
        }else {
            completSignButn.isEnabled = true
            userName = userNameTextfield.text
        }
        guard let img = userImagePicker.image, imageSelected == true
            else{
                print("image should be selected")
                return UploadingImage()
                
        }
        
    
        if let imjData = UIImageJPEGRepresentation(img, 0.2){
            let imgUId = NSUUID().uuidString
            let metaData = FIRStorageMetadata()
            metaData.contentType = "img/jpeg"
            FIRStorage.storage().reference().child(imgUId).put(imjData, metadata:metaData){
                (metaData, error) in
                if error != nil{
                    print("did not upload img")
                }else{
                    print("upload")
                    let downloadURl = metaData?.downloadURL()?.absoluteString
                    if let url = downloadURl{
                        self.setUpUser(img:url)
                    }
                }
            }
            
            
        }
    }
    
    
    
    
    
    
    
    
    
    @IBAction func completeAccount(_ sender: Any){
        
        FIRAuth.auth()?.createUser(withEmail: emailfield, password: paswdfield, completion: {(user, error) in if error != nil{
            print(error)
            
        }else if let user = user {
            self.userUid = user.uid
            
            }
            self.UploadingImage()
        })
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func selectedImagePicker(_ sender:Any){
        present (imagepicker, animated:true, completion: nil)
        
    }
    
    @IBAction func cancel (_ sender:AnyObject){
        dismiss(animated: true, completion: nil)
        
    }
    

    
}







        
        
    

