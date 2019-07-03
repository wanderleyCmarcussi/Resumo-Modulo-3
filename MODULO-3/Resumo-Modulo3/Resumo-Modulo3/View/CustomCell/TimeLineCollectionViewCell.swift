//
//  TimeLineCollectionViewCell.swift
//  Resumo-Modulo3
//
//  Created by Digital House on 02/07/19.
//  Copyright © 2019 Digital House. All rights reserved.
//

import UIKit

class TimeLineCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var coments: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    /*
      PARA POPULAR A TELA
 */
    
    func setupCell (value: Post?) {
        
        if let _post = value {
            self.image.image = _post.image
            self.titleLabel.text = _post.name
            self.coments.text = _post.coments
            
        }
        
        
    }
    
    
}
