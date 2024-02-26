//
//  CharacterListViewModel.swift
//  Marvel
//
//  Created by Andrés Fonseca on 26/02/2024.
//

import Foundation

class CharacterListViewModel {
    
    var charactersServices = CharactersServices()
    
    func getCharacters() {
        Task (priority: .userInitiated) {
            let result = await charactersServices.getCharacters()
            switch result {
            case .success(let data):
                let charactersData = [data]
                DataManager.shared.charactersData = charactersData
            case .failure(let error):
                AppError.handle(error: error)
            }
        }
    }
}
