//
//  AuthenticateUser.swift
//  Personality
//
//  Created by Thiago Medeiros on 14/12/21.
//

import Foundation

struct AuthenticateUser: Request {
    typealias ReturnType = AuthDTO
    var endpoint: Endpoint = Endpoint(path: "/auth")
    var method: HTTPMethod = .post
    var body: [String : Any]?
    
    init(body: [String : Any]) {
        self.body = body
    }
}
