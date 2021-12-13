//
//  Endpoint.swift
//  Personality
//
//  Created by Thiago Medeiros on 01/12/21.
//

import Foundation

struct Endpoint {
    var path: String
    var queryItems: [URLQueryItem] = []
    var headers: [String: Any] = [:]
}
