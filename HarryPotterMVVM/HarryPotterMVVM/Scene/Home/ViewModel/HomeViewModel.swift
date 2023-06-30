//
//  HomeViewModel.swift
//  HarryPotterMVVM
//
//  Created by Elif Tum on 26.06.2023.
//

import Foundation

protocol HomeViewBusinessLogic: AnyObject {
    func didFinishGetCharactersWithSuccess()
    func didFinishGetCharactersWithError(error: Error)
}


class HomeViewModel{
    
    var response : CharactersModel?
    
    var selectedCharacter: CharactersModelElement?
    
    weak var delegate:HomeViewBusinessLogic?
    
    func getCharacters() {
        NetworkManager.shared.callService(with: .characters) { [weak self] (response: Result<CharactersModel, Error>) in
            switch response {
            case .success(let model):
                self?.response = model
                self?.delegate?.didFinishGetCharactersWithSuccess()
            case .failure(let failure):
                self?.delegate?.didFinishGetCharactersWithError(error: failure)
            }
        }
    }
    
    
    
}
