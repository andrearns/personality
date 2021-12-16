//
//  GetUser.swift
//  Personality
//
//  Created by Thiago Medeiros on 16/12/21.
//

import Foundation

struct GetUser: Request {
    typealias ReturnType = User
    var endpoint: Endpoint
    var method: HTTPMethod = .get
    var headers: [String : String]?
    
    init(token: String) {
        self.headers = ["Authorization": "Bearer \(token)"]
        
        self.endpoint = Endpoint(path: "/users")
    }
}
