//
//  CircleImage.swift
//  facebooklikeapp
//
//  Created by IOS DEVELOPER on 8/2/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import UIKit

class CircleImage: UIImageView {

    override func awakeFromNib() {
        super .awakeFromNib()
        self.layer.cornerRadius = self.frame.width/2
        self.clipsToBounds = true
    }
}
