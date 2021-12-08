//
//  ResultsService.swift
//  Personality
//
//  Created by Thiago Medeiros on 08/12/21.
//

import Foundation
import Combine

protocol ResultsServiceProtocol: AnyObject {
    var networker: NetworkerProtocol { get }
    
    func listResults(quiz_id: String) -> AnyPublisher<[QuizResult], Error>
}

class ResultsService: ResultsServiceProtocol {
    let networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    func listResults(quiz_id: String) -> AnyPublisher<[QuizResult], Error> {
        let endpoint = Endpoint.results(quiz_id: quiz_id)
        
        return networker.get(type: [QuizResult].self,
                             url: endpoint.url,
                             headers: endpoint.headers)
    }
}
