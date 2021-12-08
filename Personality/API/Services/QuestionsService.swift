//
//  QuestionsService.swift
//  Personality
//
//  Created by Thiago Medeiros on 07/12/21.
//

import Foundation
import Combine

protocol QuestionsServiceProtocol: AnyObject {
    var networker: NetworkerProtocol { get }
    
    func listQuestions(quiz_id: String) -> AnyPublisher<QuestionsDTO, Error>
}

class QuestionsService: QuestionsServiceProtocol {
    let networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    func listQuestions(quiz_id: String) -> AnyPublisher<QuestionsDTO, Error> {
        let endpoint = Endpoint.questionsWithAnswers(id: quiz_id)
        
        return networker.get(type: QuestionsDTO.self,
                             url: endpoint.url,
                             headers: endpoint.headers)
    }
}
