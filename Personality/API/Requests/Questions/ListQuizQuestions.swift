//
//  ListQuizQuestions.swift
//  Personality
//
//  Created by Thiago Medeiros on 14/12/21.
//

import Foundation

struct ListQuizQuestions: Request {
    typealias ReturnType = QuestionsDTO
    var endpoint: Endpoint
    var method: HTTPMethod = .get
    
    init(quiz_id: String) {        
        self.endpoint = Endpoint(path: "/questions/includeAnswers/\(quiz_id)")
    }
}
