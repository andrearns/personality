//
//  ListQuizzes.swift
//  Personality
//
//  Created by Thiago Medeiros on 14/12/21.
//

import Foundation

struct ListQuizzes: Request {
    typealias ReturnType = QuizzesDTO
    var endpoint: Endpoint
    var method: HTTPMethod = .get
    
    init(take: Int? = nil, skip: Int? = nil) {
        var queryItems: [URLQueryItem] = []
        
        if let take = take {
            queryItems.append(URLQueryItem(name: "take", value: "\(take)"))
        }
        if let skip = skip {
            queryItems.append(URLQueryItem(name: "skip", value: "\(skip)"))
        }
        
        self.endpoint = Endpoint(path: "/quizzes", queryItems: queryItems)
    }
}
