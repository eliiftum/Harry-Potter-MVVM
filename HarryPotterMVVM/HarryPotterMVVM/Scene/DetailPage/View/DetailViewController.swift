//
//  DetailViewController.swift
//  HarryPotterMVVM
//
//  Created by Elif Tum on 26.06.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    @IBOutlet weak var actorLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    
    var selectedCharacter: CharactersModelElement?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadViews()

    }
    
   func loadViews() {
       if let selectedCharacter {
           if let imageURL = selectedCharacter.image, !imageURL.isEmpty {
               imageView.kfImage(url: imageURL)
           }
           
           nameLabel.text = selectedCharacter.name.unwrapWithStringEmpty
           houseLabel.text = selectedCharacter.house?.rawValue
           actorLabel.text = selectedCharacter.actor.unwrapWithStringEmpty
           speciesLabel.text = selectedCharacter.species?.rawValue
       }
    }

}
