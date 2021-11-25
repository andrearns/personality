//
//  QuizzesRepository.swift
//  Personality
//
//  Created by Thiago Medeiros on 25/11/21.
//

import Foundation

struct ListQuizzesResponse: Decodable {
    let quizzes: [Quiz]
    let count: Int
}

class QuizzesRepository {
    let baseRoute = "/quizzes"
    let apiService = APIService.shared
    
    func listQuizzes(completion: @escaping ([Quiz]) -> Void) {
        apiService.getRequest(route: "\(baseRoute)") { data in
            let decoder = JSONDecoder()
            
            do {
                let response = try decoder.decode(ListQuizzesResponse.self, from: data)
                DispatchQueue.main.async {
                    completion(response.quizzes)
                }
            } catch let error {
                print("Could not decode response", error)
            }
        }
    }
}
