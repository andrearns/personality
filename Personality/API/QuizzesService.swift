//
//  QuizzesRepository.swift
//  Personality
//
//  Created by Thiago Medeiros on 25/11/21.
//

import Foundation
import Combine

protocol QuizzesServiceProtocol: AnyObject {
    var networker: NetworkerProtocol { get }
    
    func listQuizzes() -> AnyPublisher<Quizzes, Error>
}

class QuizzesService: QuizzesServiceProtocol {
    let networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    func listQuizzes() -> AnyPublisher<Quizzes, Error> {
        let endpoint = Endpoint.quizzesList(take: 10, skip: 0)
        
        return networker.get(type: Quizzes.self,
                             url: endpoint.url,
                             hearders: endpoint.headers)
    }
}
