//
//  Product.swift
//  GoodAsOldPhones
//
//  Created by Steve Baker on 3/6/16.
//  Copyright © 2016 Beepscore LLC. All rights reserved.
//

import Foundation

class Product {
    
    var name: String?
    var imageName: String?
    var cellImageName: String?
    
    init(name: String,
        imageName: String,
        cellImageName: String) {
            
            self.name = name
            self.imageName = imageName
            self.cellImageName = cellImageName
    }

}