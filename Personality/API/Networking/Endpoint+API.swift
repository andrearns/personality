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
    
    var headers: [String: Any] {
        return [:]
    }
}

extension Endpoint {
    static var auth: Self {
        return Endpoint(path: "/auth")
    }
    
    static var users: Self {
        return Endpoint(path: "/users")
    }
    
    static var userAvatar: Self {
        return Endpoint(path: "/users/avatar")
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
        return Endpoint(path: "/results/\(quiz_id)")
    }
    
    static var usersResults: Self {
        return Endpoint(path: "/usersResults")
    }
    
    static func usersResultsList(result_id: String?) -> Self {
        guard let result_id = result_id else {
            return Endpoint(path: "/usersResults")
        }

        return Endpoint(path: "/usersResults", queryItems: [
            URLQueryItem(name: "result_id", value: "\(result_id)"),
        ])
    }
}
