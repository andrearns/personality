//
//  QuestionsService.swift
//  Personality
//
//  Created by Thiago Medeiros on 07/12/21.
//

import Foundation
import Combine

protocol QuestionsServiceProtocol: AnyObject {
    var apiClient: APIClient { get }
    
    func listQuestions(quiz_id: String) -> AnyPublisher<ListQuizQuestions.ReturnType, NetworkRequestError>
}

class QuestionsService: QuestionsServiceProtocol {
    let apiClient: APIClient
    
    init(apiClient: APIClient = APIClient()) {
        self.apiClient = apiClient
    }
    
    func listQuestions(quiz_id: String) -> AnyPublisher<ListQuizQuestions.ReturnType, NetworkRequestError> {
        return apiClient.dispatch(ListQuizQuestions(quiz_id: quiz_id))
    }
}
