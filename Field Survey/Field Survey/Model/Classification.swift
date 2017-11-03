//
//  Classification.swift
//  Field Survey
//
//  Created by Austin Beydler on 11/1/17.
//  Copyright © 2017 Austin Beydler. All rights reserved.
//

import UIKit

enum Classification: String{
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
        
    }
    
}
