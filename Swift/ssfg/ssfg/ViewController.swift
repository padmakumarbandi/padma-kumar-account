//
//  ViewController.swift
//  ssfg
//
//  Created by IOS DEVELOPER on 8/11/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
   
      
//        func collectionView(: collectionView: UICollectionView, didSelectItemAt: <#T##IndexPath#>){
//            
        }
        
        
        
        
        
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
            
            
            return 30
        }
        
    
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
            
        }
        
        
     
         func numberOfSections(in collectionView: UICollectionView) -> Int
        {
            return 1
        }

        
    }
}



