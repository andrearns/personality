//
//  ListPopularQuizzes.swift
//  Personality
//
//  Created by Thiago Medeiros on 17/12/21.
//

import Foundation

struct ListPopularQuizzes: Request {
    typealias ReturnType = QuizzesDTO
    var endpoint: Endpoint
    var method: HTTPMethod = .get
    
    init(take: Int? = nil) {
        var queryItems: [URLQueryItem] = []
        
        if let take = take {
            queryItems.append(URLQueryItem(name: "take", value: "\(take)"))
        }
        
        self.endpoint = Endpoint(path: "/quizzes/popular", queryItems: queryItems)
    }
}
