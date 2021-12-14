//
//  UpdateUserResult.swift
//  Personality
//
//  Created by Thiago Medeiros on 14/12/21.
//

import Foundation

struct UpdateUserResult: Request {
    typealias ReturnType = UserResult
    var endpoint: Endpoint
    var method: HTTPMethod = .patch
    var headers: [String : String]?
    var body: [String : Any]?
    
    init(body: [String : Any]?, token: String) {
        self.headers = ["Authorization": "Bearer \(token)"]
        self.body = body
        
        self.endpoint = Endpoint(path: "/usersResults")
    }
}
