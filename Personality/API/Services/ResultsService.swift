//
//  ResultsService.swift
//  Personality
//
//  Created by Thiago Medeiros on 08/12/21.
//

import Foundation
import Combine

protocol ResultsServiceProtocol: AnyObject {
    var apiClient: APIClient { get }
    
    func listResults(quiz_id: String) -> AnyPublisher<ListQuizResults.ReturnType, NetworkRequestError>
}

class ResultsService: ResultsServiceProtocol {
    let apiClient: APIClient
    
    init(apiClient: APIClient = APIClient()) {
        self.apiClient = apiClient
    }
    
    func listResults(quiz_id: String) -> AnyPublisher<ListQuizResults.ReturnType, NetworkRequestError> {
        return apiClient.dispatch(ListQuizResults(quiz_id: quiz_id))
    }
}
