//
//  Circleview.swift
//  facebooklikeapp
//
//  Created by IOS DEVELOPER on 8/2/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import UIKit

class Circleview: UIView {
    
    
    override func awakeFromNib() {
        super .awakeFromNib()
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
    }

    
    
 
}
