//
//  UpdateUser.swift
//  Personality
//
//  Created by Thiago Medeiros on 14/12/21.
//

import Foundation

struct UpdateUser: Request {
    typealias ReturnType = User
    var endpoint: Endpoint
    var method: HTTPMethod = .patch
    var headers: [String : String]?
    var body: [String : Any]?
    
    init(token: String, body: [String : Any]?) {
        self.headers = ["Authorization": "Bearer \(token)"]
        self.body = body
        
        self.endpoint = Endpoint(path: "/users/avatar")
    }
}
