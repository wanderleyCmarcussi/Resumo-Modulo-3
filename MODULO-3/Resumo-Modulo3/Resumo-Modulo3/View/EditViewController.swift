//
//  EditViewController.swift
//  Resumo-Modulo3
//
//  Created by Digital House on 02/07/19.
//  Copyright © 2019 Digital House. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    
    @IBOutlet weak var closetButton: UIButton!
    
    @IBOutlet weak var postImage: UIImageView!
    
    
    var imageSelect: UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.postImage.image = self.imageSelect
    }
    
    @IBAction func clicarVoltar(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func tappedNoir(_ sender: Any) {
    
        self.postImage.image = self.imageSelect?.addFilter(filter: .Noir)
        
    }
    
    @IBAction func tappedMono(_ sender: Any) {
        
                self.postImage.image = self.imageSelect?.addFilter(filter: .Mono)
    }
    
    
    @IBAction func tappedInstant(_ sender: Any) {
        
                self.postImage.image = self.imageSelect?.addFilter(filter: .Instant)
    }
    
    
    
    
}
