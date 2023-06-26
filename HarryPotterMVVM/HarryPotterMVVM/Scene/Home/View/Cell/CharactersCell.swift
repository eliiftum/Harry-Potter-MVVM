//
//  CollectionViewCell.swift
//  HarryPotterMVVM
//
//  Created by Elif Tum on 26.06.2023.
//

import UIKit

class CharactersCell: UICollectionViewCell {
    
    @IBOutlet var characterImageView: UIImageView!
    
    @IBOutlet var charachterNameLabel: UILabel!
    
    @IBOutlet var charachterRealmLabel: UILabel!
    
    
    func configure(characters: CharactersModelElement?) {
        if let imageURL = characters?.image, !imageURL.isEmpty {
            characterImageView.kfImage(url: imageURL)
        }
    
        charachterNameLabel.text = characters?.name
        charachterRealmLabel.text = characters?.house?.rawValue
        
    }
    
    
    
}
