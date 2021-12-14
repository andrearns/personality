//
//  ListQuizResults.swift
//  Personality
//
//  Created by Thiago Medeiros on 14/12/21.
//

import Foundation

struct ListQuizResults: Request {
    typealias ReturnType = [QuizResult]
    var endpoint: Endpoint
    var method: HTTPMethod = .get
    
    init(quiz_id: String) {
        self.endpoint = Endpoint(path: "/results/quiz/\(quiz_id)")
    }
}
