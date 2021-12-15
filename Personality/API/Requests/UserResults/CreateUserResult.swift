//
//  CreateUserResult.swift
//  Personality
//
//  Created by Thiago Medeiros on 14/12/21.
//

import Foundation

struct CreateUserResult: Request {
    typealias ReturnType = UserResult
    var endpoint: Endpoint
    var method: HTTPMethod = .post
    var body: [String : Any]?
    var headers: [String : String]?
    
    init(body: [String : Any]?, token: String) {
        self.endpoint = Endpoint(path: "/usersResults")
        self.headers = ["Authorization": "Bearer \(token)"]
        self.body = body
    }
}
