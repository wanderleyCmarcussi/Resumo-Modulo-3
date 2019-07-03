//
//  Post.swift
//  Resumo-Modulo3
//
//  Created by Digital House on 02/07/19.
//  Copyright © 2019 Digital House. All rights reserved.
//

import Foundation

import UIKit

class Post {

    var name: String?
    var coments: String?
    var image: UIImage?
    
    init ( name: String?, coments: String?, image: UIImage?) {
        
        self.name = name
        self.coments = coments
        self.image = image
        
    }


}
