//
//  Endpoint.swift
//  Personality
//
//  Created by Thiago Medeiros on 01/12/21.
//

import Foundation

public struct Endpoint {
    var path: String
    var queryItems: [URLQueryItem] = []
}

extension Endpoint {
    var url: URL? {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "thihxm.dev.br"
        components.path = path
        components.queryItems = queryItems
        
        guard let url = components.url else { return nil }
        
        return url
    }
}
