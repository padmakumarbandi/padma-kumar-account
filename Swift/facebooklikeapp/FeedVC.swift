//
//  FeedVC.swift
//  facebooklikeapp
//
//  Created by IOS DEVELOPER on 8/2/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase


class FeedVC: UIViewController, UINavigationController, UITableViewDataSource, UITableViewDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var postbutn: UIButton!
    
    
    
    var post = [Posts]()
    var posts: Posts!
    var imagepicker = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      tableview.delegate = self
        tableview.dataSource = self
        imagepicker = UIImagePickerController()
        imagepicker.delegate = self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate
        FIRDatabase.database().reference().child("POSTS").observe(.value, with: {(snapshot) in
            if let snapshot = snapshot.children.allObjects as?[FIRDataSnapshot]{
                for data in snapshot{
                    print(data)
                    if let postdict = data.value as?Dictionary<String, AnyObject>{
                        let key = data.key
                        let pasts = Posts(postKey: key, postData: postdict)
                        self.post.append(pasts)
                        
                    }
                }
            }
           self.tableview.reloadData()
        })
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
    return post.count
        
        
        
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
        
        let post = posts[indexPath.row]
       if let cell = tableview.dequeueReusableCell(withIdentifier: "Postcell") as?
            postCell{
            cell.configCell(posts: posts)
            return cell
        } else{
            return postCell()
            
        }
        
        
    }
        
        
        

       
    
}
