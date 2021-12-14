//
//  QuizzesRepository.swift
//  Personality
//
//  Created by Thiago Medeiros on 25/11/21.
//

import Foundation
import Combine

protocol QuizzesServiceProtocol: AnyObject {
    var apiClient: APIClient { get }
    
    func listQuizzes() -> AnyPublisher<ListQuizzes.ReturnType, NetworkRequestError>
}

class QuizzesService: QuizzesServiceProtocol {
    let apiClient: APIClient
    
    init(apiClient: APIClient = APIClient()) {
        self.apiClient = apiClient
    }
    
    func listQuizzes() -> AnyPublisher<ListQuizzes.ReturnType, NetworkRequestError> {
        return apiClient.dispatch(ListQuizzes())
    }
}
