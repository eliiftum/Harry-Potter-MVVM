//
//  CollectionViewCell.swift
//  HarryPotterMVVM
//
//  Created by Elif Tum on 26.06.2023.
//

import UIKit
import SnapKit

class CharactersCell: UICollectionViewCell {
    
    @IBOutlet var characterImageView: UIImageView!
    @IBOutlet var charachterNameLabel: UILabel!
    @IBOutlet var charachterRealmLabel: UILabel!
    
    func configure(characters: CharactersModelElement?) {
        setSnapKit()
        
        if let imageURL = characters?.image, !imageURL.isEmpty {
            characterImageView.kfImage(url: imageURL)
        }
        
        charachterNameLabel.text = characters?.name
        charachterRealmLabel.text = characters?.house?.rawValue
        
    }
    
    func setSnapKit() {
        
        characterImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            //make.left.right.equalToSuperview()
            make.height.equalTo(100)
            make.width.equalToSuperview()
            make.leading.equalToSuperview()
            
        }
        
        charachterNameLabel.snp.makeConstraints { make in
            make.top.equalTo(characterImageView.snp.bottom).offset(5)
            make.left.right.equalToSuperview()
            make.height.equalTo(30)
            
        }
        
        charachterRealmLabel.snp.makeConstraints { make in
            make.top.equalTo(charachterNameLabel.snp.bottom).offset(5)
            make.left.right.equalToSuperview()
            make.height.equalTo(30)
        }
    }
    
    
}
