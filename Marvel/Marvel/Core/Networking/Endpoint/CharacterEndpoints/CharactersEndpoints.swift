//
//  CharactersEndpoints.swift
//  Marvel
//
//  Created by Andrés Fonseca on 26/02/2024.
//

import Foundation

enum CharactersEndpoints {
    case characters
}

extension CharactersEndpoints: Endpoint {
    
    var path: String {
        switch self {
        case .characters:
            return "/v1/public/characters"
        }
    }
    
    var method: RequestMethod {
        switch self {
        case .characters:
            return .get
        }
    }
    
    var queryItems: [URLQueryItem]? {
        let apiKey = "3a783b25c80e1c44875356dd363f272d"
        let hash = "51a3ecf2f92a23817992a2663183325e"
        switch self {
        case .characters:
            return [URLQueryItem(name: "apikey", value: "\(apiKey)"),
            URLQueryItem(name: "hash", value: "\(hash)"),
            URLQueryItem(name: "ts", value: "1")]
        }
    }
    
    var header: [String : String]? {
        switch self {
        case .characters:
            return nil
        }
    }
    
    var body: [String : Any]? {
        switch self {
        case .characters:
            return nil
        }
    }
}
