//
//  Endpoint.swift
//  Marvel
//
//  Created by Andrés Fonseca on 26/02/2024.
//

import Foundation

protocol Endpoint {
    var scheme: String { get }
    var host: String { get }
    var path: String { get }
    var queryItems: [URLQueryItem]? { get }
    var method: RequestMethod { get }
    var header: [String: String]? { get }
    var body: [String: Any]? { get }
}

extension Endpoint {
    var scheme: String {
        return "https"
    }
    
    var host: String {
        return "gateway.marvel.com"
    }
}
