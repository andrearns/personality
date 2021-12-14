//
//  ListUserResults.swift
//  Personality
//
//  Created by Thiago Medeiros on 14/12/21.
//

import Foundation

struct ListUserResults: Request {
    typealias ReturnType = [UserResult]
    var endpoint: Endpoint
    var method: HTTPMethod = .get
    var headers: [String : String]?
    
    init(token: String, result_id: String? = nil) {
        self.headers = ["Authorization": "Bearer \(token)"]
        
        self.endpoint = Endpoint(path: "/usersResults")
    }
}
