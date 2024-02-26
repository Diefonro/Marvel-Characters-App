//
//  CharacterServices.swift
//  Marvel
//
//  Created by Andrés Fonseca on 26/02/2024.
//

import Foundation

protocol CharactersServiceable {
    func getCharacters() async -> Result<CharacterListModel, RequestError>
}

class CharactersServices: HTTPRequest, CharactersServiceable {
    func getCharacters() async -> Result<CharacterListModel, RequestError> {
        return await sendRequest(endpoint: CharactersEndpoints.characters, responseModel: CharacterListModel.self)
    }
}
