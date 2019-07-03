//
//  ViewController.swift
//  Resumo-Modulo3
//
//  Created by Digital House on 02/07/19.
//  Copyright © 2019 Digital House. All rights reserved.
//

import UIKit

class TimeLineViewController: UIViewController {


    
    @IBOutlet weak var timeLineCollection: UICollectionView!
   
    
    
    /// criar um array para incluir as fotos, titulo e comentario
    
    var arrayPost: [Post] = [Post(name: "Maui", coments: " Maui é uma ilha do Pacífico Central que faz parte do arquipélago havaiano.", image: UIImage(named:"praia1")),
                             Post(name: "Oahu", coments: "Oahu é uma ilha dos EUA situada no Pacífico Central que faz parte da cadeia de ilhas do Havaí e abriga a capital do estado, Honolulu.", image: UIImage(named:"praia2")),
                             Post(name: " Honolulu ", coments: " Honolulu, situada na costa sul da ilha de Oahu, é a capital do Havaí e a porta de entrada para a cadeia de ilhas dos EUA.", image: UIImage(named: "praia3"))]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()



        // Registra a celula que foi criada na XIB
        
        let nib = UINib (nibName: "TimeLineCollectionViewCell", bundle: nil)

        self.timeLineCollection?.register(nib, forCellWithReuseIdentifier:
        "TimeLineCollectionViewCell")
        
        
        self.timeLineCollection.delegate = self
        self.timeLineCollection.dataSource = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}


/// EXTENTION PARA O DELEGATE E DATASORCE

extension TimeLineViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.arrayPost.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TimeLineCollectionViewCell", for: indexPath) as! TimeLineCollectionViewCell
        
        cell.setupCell(value: arrayPost[indexPath.row])
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "EditViewController", sender: self.arrayPost[indexPath.row].image)
        
    }
    
    //// funcao para mandar a imagaem para a outra tela
    


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! EditViewController
        vc.imageSelect = sender as? UIImage
    }
        
    }
    

