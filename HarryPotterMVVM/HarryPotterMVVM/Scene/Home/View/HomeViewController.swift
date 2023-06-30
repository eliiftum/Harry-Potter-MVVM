//
//  ViewController.swift
//  HarryPotterMVVM
//
//  Created by Elif Tum on 26.06.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    let viewModel = HomeViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        viewModel.getCharacters()
    }
    
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharactersCell", for: indexPath) as! CharactersCell
        
        let element = viewModel.response?[indexPath.row]
        
        cell.configure(characters: element)
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let characters = viewModel.response else {return 0}
        return characters.count
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width/2-20, height: 190)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        viewModel.selectedCharacter = viewModel.response?[indexPath.row]
        
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC"{
            
            if let destination = segue.destination as? DetailViewController{
                destination.selectedCharacter = viewModel.selectedCharacter
            }
        }
    }
    
}


extension HomeViewController : HomeViewBusinessLogic {
    func didFinishGetCharactersWithSuccess() {
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
    
    func didFinishGetCharactersWithError(error: Error) {
        print(error.localizedDescription)
    }
}
