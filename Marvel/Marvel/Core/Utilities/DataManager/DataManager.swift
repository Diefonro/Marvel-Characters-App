//
//  DataManager.swift
//  Marvel
//
//  Created by Andrés Fonseca on 26/02/2024.
//

import Foundation

class DataManager {
    static var shared = DataManager()
    
    var charactersData: [CharacterListModel] = []
}
