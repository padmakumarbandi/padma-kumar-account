//
//  postCell.swift
//  facebooklikeapp
//
//  Created by IOS DEVELOPER on 8/2/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import UIKit
import Firebase
class postCell: UITableViewCell {

    
    @IBOutlet weak var userImg: UIImageView!
      @IBOutlet weak var username: UILabel!
      @IBOutlet weak var postImg: UIImageView!
      @IBOutlet weak var likeslbl: UILabel!
    
    var posts: Posts!
    var userpostsKey: FIRDatabaseReference!
    override func awakeFromNib(){
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    func configCell(posts:Posts, img:UIImage? = nil, userImg: UIImage? = nil){
        self.posts = posts
        self.likeslbl.text = "\(posts.likes)"
//        self.username.text = posts.username
        
        if img != nil {
            self.postImg.image = img
        }else {
            let ref = FIRStorage.storage().reference(forURL: posts.postImg)
            ref.data(withMaxSize: 2*1024, completion:
                {(data, error) in
                    if error != nil{
                        print("could not load img")
                    }else{
                        if let imgData = data {
                            if let img = UIImage(data: imgData){
                                self.postImg.image = img
                                
                            }
                        }
                    }
            })
        }
        
        
        if userImg != nil {
            self.postImg.image = img
        }else {
            let ref = FIRStorage.storage().reference(forURL: posts.userImg)
            ref.data(withMaxSize: 2*1024, completion:
                {(data, error) in
                    if error != nil{
                        print("could not load img")
                    }else{
                        if let imgData = data {
                            if let img = UIImage(data: imgData){
                                self.postImg.image = userImg
                                
                            }
                        }
                    }
            })
        }
        
        
        
        
        
    }
    
    
    
    
    
    
}


    
    
   


