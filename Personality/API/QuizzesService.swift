//
//  QuizzesRepository.swift
//  Personality
//
//  Created by Thiago Medeiros on 25/11/21.
//

import Foundation
import Combine

struct ListQuizzesResponse: Decodable {
    let quizzes: [Quiz]
    let count: Int
}

protocol QuizzesServiceProtocol: AnyObject {
    var networker: NetworkerProtocol { get }
    
    func listQuizzes() -> AnyPublisher<ListQuizzesResponse, Error>
}

class QuizzesService: QuizzesServiceProtocol {
    let networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    func listQuizzes() -> AnyPublisher<ListQuizzesResponse, Error> {
        let endpoint = Endpoint.quizzesList(take: 10, skip: 10)
        
        return networker.get(type: ListQuizzesResponse.self,
                             url: endpoint.url,
                             hearders: endpoint.headers)
    }
}
