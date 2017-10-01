//
//  Posts.swift
//  facebooklikeapp
//
//  Created by IOS DEVELOPER on 8/2/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import Foundation
import FirebaseDatabase
import Firebase


class Posts {
    
    
    private var _username: String!
    private var _userImg: String!
    private var _postImg: String!
    private var _likes: Int!
    private var _postKey: String!
    private var _postRef:FIRDatabaseReference!
    
    
    
    //getting getter and setters
    var username: String{
        return _username
        
    }
    var userImg:String!{
     return _userImg
        
    }
   
    var postImg: String {
        get {
            return _postImg
        }
        set {
            _postImg = newValue
        }
    }
    var likes: Int{
        return _likes
    }
    var postKey:String{
        return _postKey
    }
    
    init(imgUrl:String, likes:Int, username: String, userImg:String) {
        
        _likes = likes
        _postImg = imgUrl
        _username = username
        _userImg = userImg
        
        
    }
    
    init(postKey:String, postData: Dictionary<String, AnyObject>) {
        _postKey = postKey
        
        if let username = postData["username"] as?String{
            _username = username
        }
        
    
        
        if let userImg = postData["userImg"] as?String{
            _userImg = userImg
        }
        
        if let postImg = postData["ImgUrl"] as?String{
            _postImg = postImg
        }
        
        if let likes = postData["ImgUrl"] as?Int{
            _likes = likes
        }
_postRef = FIRDatabase.database().reference().child("post")
        
        
        
        
    }
    
    
    
    
    
    
    
    
}
