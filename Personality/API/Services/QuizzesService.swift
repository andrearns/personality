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
    
    func listQuizzes() -> AnyPublisher<QuizzesDTO, Error>
}

class QuizzesService: QuizzesServiceProtocol {
    let networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    func listQuizzes() -> AnyPublisher<QuizzesDTO, Error> {
        let endpoint = Endpoint.quizzesList(take: 10, skip: 0)
        
        return networker.get(type: QuizzesDTO.self,
                             url: endpoint.url,
                             headers: endpoint.headers)
    }
}
