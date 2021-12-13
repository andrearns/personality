//
//  Endpoint+API.swift
//  Personality
//
//  Created by Thiago Medeiros on 01/12/21.
//

import Foundation

extension Endpoint {
    var url: URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "thihxm.dev.br"
        components.path = path
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        
        return url
    }
}

extension Endpoint {
    static var auth: Self {
        return Endpoint(path: "/auth")
    }
    
    static var users: Self {
        return Endpoint(path: "/users")
    }
    
    static func userAvatar(token: String) -> Self {
        var endpoint = Endpoint(path: "/users/avatar")
        endpoint.headers = ["Authorization": "Bearer \(token)"]
        
        return endpoint
    }
    
    static var quizzes: Self {
        return Endpoint(path: "/quizzes")
    }
    
    static func quizzesList(take: Int, skip: Int) -> Self {
        return Endpoint(path: "/quizzes", queryItems: [
            URLQueryItem(name: "take", value: "\(take)"),
            URLQueryItem(name: "skip", value: "\(skip)")
        ])
    }
    
    static func quizzesWithQuestions(take: Int, skip: Int) -> Self  {
        return Endpoint(path: "/quizzes/includeQuestions", queryItems: [
            URLQueryItem(name: "take", value: "\(take)"),
            URLQueryItem(name: "skip", value: "\(skip)")
        ])
    }
    
    static func questions(id: String) -> Self {
        return Endpoint(path: "/questions/\(id)")
    }
    
    static func questionsWithAnswers(id: String) -> Self {
        return Endpoint(path: "/questions/includeAnswers/\(id)")
    }
    
    static func answers(id: String) -> Self {
        return Endpoint(path: "/answers/\(id)")
    }
    
    static func badges(id: String) -> Self {
        return Endpoint(path: "/badges/\(id)")
    }
    
    static func results(quiz_id: String) -> Self {
        return Endpoint(path: "/results/quiz/\(quiz_id)")
    }
    
    static func usersResults(token: String) -> Self {
        var endpoint = Endpoint(path: "/usersResults")
        endpoint.headers = ["Authorization": "Bearer \(token)"]
        
        return endpoint
    }
    
    static func usersResultsList(token: String, result_id: String? = nil) -> Self {
        var endpoint = Endpoint(path: "/usersResults")
        endpoint.headers = ["Authorization": "Bearer \(token)"]
        
        if let result_id = result_id {
            endpoint.queryItems = [
                URLQueryItem(name: "result_id", value: "\(result_id)"),
            ]
        }
        
        return endpoint
    }
}
