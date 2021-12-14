//
//  UserResultsService.swift
//  Personality
//
//  Created by Thiago Medeiros on 14/12/21.
//

import Foundation
import Combine

protocol UserResultsServiceProtocol: AnyObject {
    var apiClient: APIClient { get }
    
    func getUserResults() -> AnyPublisher<ListUserResults.ReturnType, NetworkRequestError>
    func createUserResult(with userResult: UserResult) -> AnyPublisher<CreateUserResult.ReturnType, NetworkRequestError>
    func updateUserResult(with userResult: UserResult) -> AnyPublisher<UpdateUserResult.ReturnType, NetworkRequestError>
}

class UserResultsService: UserResultsServiceProtocol {
    let apiClient: APIClient
    
    init(apiClient: APIClient = APIClient()) {
        self.apiClient = apiClient
    }
    
    func getUserResults() -> AnyPublisher<ListUserResults.ReturnType, NetworkRequestError> {
        guard let token = UserDefaults.standard.string(forKey: "token") else {
            fatalError("No token provided")
        }
        
        return apiClient.dispatch(ListUserResults(token: token))
    }
    
    func createUserResult(with userResult: UserResult) -> AnyPublisher<CreateUserResult.ReturnType, NetworkRequestError> {
        guard let token = UserDefaults.standard.string(forKey: "token") else {
            fatalError("No token provided")
        }
        
        let requestBody = CreateUserResultRequestDTO(result_id: userResult.result_id, isSelected: userResult.isSelected, isPrivate: userResult.isPrivate)
        
        return apiClient.dispatch(CreateUserResult(body: requestBody.asDictionary, token: token))
    }
    
    func updateUserResult(with userResult: UserResult) -> AnyPublisher<UpdateUserResult.ReturnType, NetworkRequestError> {
        guard let token = UserDefaults.standard.string(forKey: "token") else {
            fatalError("No token provided")
        }
        
        let requestBody = UpdateUserResultRequestDTO(id: userResult.id, isSelected: userResult.isSelected, isPrivate: userResult.isPrivate)
        
        return apiClient.dispatch(UpdateUserResult(body: requestBody.asDictionary, token: token))
    }
}
